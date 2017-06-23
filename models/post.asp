<% 
  Class Post
    'Private, class member variable
    Private p_seq
    Private p_title
    Private p_content
    Private p_status

    ' getter and setter
    Public Property Get Seq()
      Seq = p_seq
    End Property
    Public Property Let Seq(value)
      p_seq = value
    End Property
    
    Public Property Get Title()
      Title = p_title
    End Property
    Public Property Let Title(value)
      p_title = value
    End Property

    Public Property Get Content()
      Content = p_content
    End Property
    Public Property Let Content(value)
      p_content = value
    End Property
    
    Public Property Get Status()
      Status = p_status
    End Property
    Public Property Let Status(value)
      p_status = value
    End Property
  End Class
%>
