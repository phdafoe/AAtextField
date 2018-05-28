//
//  AATextFieldEffects.swift
//  AA_TextField
//
//  Created by Andres Felipe Ocampo Eljaiesk on 28/5/18.
//  Copyright © 2018 icologic. All rights reserved.
//

import Foundation
import UIKit

extension String{
    /* Verdadero si "self" contiene caracteres*/
    var isNotEmpty : Bool{
        return !isEmpty
    }
}

open class AATextFieldEffects : UITextField{
    
    public enum AnimationType: Int {
        case textoEntrada
        case textoMuestra
    }
    
    public typealias AnimationCompletionHandler = (_ type: AnimationType)->()
    open let placeholderLabel = UILabel()
    
    open func animateViewsForTextEntry() {
        fatalError("\(#function) must be overridden")
    }
    
    open func animateViewsForTextDisplay() {
        fatalError("\(#function) must be overridden")
    }
    
    open var animationCompletionHandler: AnimationCompletionHandler?
    
    open func drawViewsForRect(_ rect: CGRect) {
        fatalError("\(#function) must be overridden")
    }
    
    open func updateViewsForBoundsChange(_ bounds: CGRect) {
        fatalError("\(#function) must be overridden")
    }
    
    // MARK: - Overrides
    override open func draw(_ rect: CGRect) {
        guard isFirstResponder == false else { return }
        drawViewsForRect(rect)
    }
    
    override open func drawPlaceholder(in rect: CGRect) {}
    
    override open var text: String? {
        didSet {
            if let text = text, text.isNotEmpty {
                animateViewsForTextEntry()
            } else {
                animateViewsForTextDisplay()
            }
        }
    }
    
    // MARK: - UITextField Observing
    override open func willMove(toSuperview newSuperview: UIView!) {
        if newSuperview != nil {
            NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidEndEditing), name: NSNotification.Name.UITextFieldTextDidEndEditing, object: self)
            
            NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidBeginEditing), name: NSNotification.Name.UITextFieldTextDidBeginEditing, object: self)
        } else {
            NotificationCenter.default.removeObserver(self)
        }
    }
    

    @objc open func textFieldDidBeginEditing() {
        animateViewsForTextEntry()
    }
    

    @objc open func textFieldDidEndEditing() {
        animateViewsForTextDisplay()
    }
    
    // MARK: - Interface Builder
    override open func prepareForInterfaceBuilder() {
        drawViewsForRect(frame)
    }
}
