<% 
  Class Country
    'Private, class member variable
    Private p_seq
    Private p_title
    Private p_code
    Private p_currency
    Private p_population
    Private p_capital

    ' getter and setter
    Public Property Get Title()
      Title = p_title
    End Property
    Public Property Let Title(value)
      p_title = value
    End Property

    Public Property Get Code()
      Code = p_code
    End Property
    Public Property Let Code(value)
      p_code = value
    End Property
    
    Public Property Get Currencies()
      Currencies = p_currency
    End Property
    Public Property Let Currencies(value)
      p_currency = value
    End Property

    Public Property Get Population()
      Population = p_population
    End Property
    Public Property Let Population(value)
      p_population = value
    End Property
    
    Public Property Get Capital()
      Capital = p_capital
    End Property
    Public Property Let Capital(value)
      p_capital = value
    End Property
    
  End Class
%>
