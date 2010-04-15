package fr.sug.springbatch.example.xstream;

import java.beans.PropertyDescriptor;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.oxm.xstream.XStreamMarshaller;

public class XStreamMarshallerFactoryBean implements FactoryBean<XStreamMarshaller>, InitializingBean {
    XStreamMarshaller marshaller;
    List<Class<?>> classes;
    Pattern patternClass = Pattern.compile("[A-Z][a-z]*");
    Pattern patternProperty = Pattern.compile("[A-Z]");
    @Override
    public void afterPropertiesSet() throws Exception {
        marshaller = new XStreamMarshaller();

        for (Class<?> clazz : classes) {
            marshaller.addAlias(transformClass(clazz.getSimpleName()).toUpperCase(), clazz);
            PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(clazz);
            for (int i = 0; i < properties.length; i++) {
                PropertyDescriptor property = properties[i];
                if (property.getWriteMethod() != null && property.getReadMethod() != null) {
                    marshaller.getXStream().aliasField(transformProperty(property.getName()).toUpperCase(), clazz, property.getName());
                }
            }
        }
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
