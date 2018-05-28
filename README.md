Bienvenidos a AAtextField
============

Ente todo que esta clase esta basada en el codigo de raulriera/TextFieldEffect, muchas gracias por tanta ayuda, he querido aportar esto al equipo de Movilidad ya que nos encontramos constantemente en Desarrollo y creacion

Esta clase se puede usar en todos los proyectos iOS que se necesiten
------------

Se puede personalizar

 1. Nuevos placeholder
 2. Nuevos y customizables colores 
 3. Características de texto seguro

A disfrutarlo!!


``` swift


 @IBOutlet weak var myTextField: HoshiTextField!
    @IBOutlet weak var myPass: HoshiTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.placeholder = "Usuario"
        myTextField.placeholderColor = .darkGray
        myTextField.borderInactiveColor = .lightGray
        myTextField.borderActiveColor = .lightGray
        
        myPass.placeholder = "Contraseña"
        myPass.placeholderColor = .darkGray
        myPass.borderInactiveColor = .lightGray
        myPass.borderActiveColor = .lightGray
        myPass.isSecureTextEntry = true
    }

```
