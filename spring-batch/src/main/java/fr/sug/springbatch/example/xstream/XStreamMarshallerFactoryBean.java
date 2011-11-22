package fr.sug.springbatch.example.xstream;

import java.beans.PropertyDescriptor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.oxm.xstream.XStreamMarshaller;

import fr.sug.springbatch.example.beans.Hop;
import fr.sug.springbatch.example.beans.Misc;

public class XStreamMarshallerFactoryBean implements FactoryBean<XStreamMarshaller>, InitializingBean {
    XStreamMarshaller marshaller;
    List<Class<?>> classes;
    Pattern patternClass = Pattern.compile("[A-Z][a-z]*");
    Pattern patternProperty = Pattern.compile("[A-Z]");
    @Override
    public void afterPropertiesSet() throws Exception {
        marshaller = new XStreamMarshaller();
        Map<String, Class<?>> aliases = new HashMap<String, Class<?>>();
        for (Class<?> clazz : classes) {
            aliases.put(transformClass(clazz.getSimpleName()).toUpperCase(), clazz);
            PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(clazz);
            for (int i = 0; i < properties.length; i++) {
                PropertyDescriptor property = properties[i];
                if (property.getWriteMethod() != null && property.getReadMethod() != null) {
                    marshaller.getXStream().aliasField(transformProperty(property.getName()).toUpperCase(), clazz, property.getName());
                }
            }
        }
        marshaller.setAliases(aliases);
        
        // fix
        marshaller.getXStream().aliasField("USE", Hop.class, "use1");
        marshaller.getXStream().aliasField("USE", Misc.class, "use1");
    }

    private String transformClass(String in) {
        Matcher m = patternClass.matcher(in);
        StringBuffer sb = new StringBuffer();
        while (m.find()) {
            m.appendReplacement(sb, "_");
            sb.append(m.group());
        }
        m.appendTail(sb);
        return sb.deleteCharAt(0).toString();
    }

    private String transformProperty(String in) {
        Matcher m = patternProperty.matcher(in);
        StringBuffer sb = new StringBuffer();
        while (m.find()) {
            m.appendReplacement(sb, "_");
            sb.append(m.group());
        }
        m.appendTail(sb);
        return sb.toString();
    }

    @Override
    public XStreamMarshaller getObject() throws Exception {
        return marshaller;
    }

    @Override
    public Class<XStreamMarshaller> getObjectType() {
        return XStreamMarshaller.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }

    public void setClasses(List<Class<?>> classes) {
        this.classes = classes;
    }
}
