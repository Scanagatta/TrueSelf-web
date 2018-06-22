package controller;

import java.time.LocalDate;

import javax.enterprise.context.ApplicationScoped;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.converter.Converter;

@Convert(LocalDate.class)
@ApplicationScoped
public class LocalDateConverter implements Converter<LocalDate> {

	@Override
	public LocalDate convert(String arg0, Class<? extends LocalDate> arg1) {
		return LocalDate.parse(arg0);
	}

}
