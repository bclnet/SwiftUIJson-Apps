//
//  UI_TestsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/12/20.
//

import SwiftUI
import SwiftUIJson

//typealias ContentView = TestView

// MARK: - JsonUI
//typealias ContentView = z_Json //: (Incomplete)

// MARK: - Modifiers:Style
//typealias ContentView = z__TabViewStyleModifier //: (Todo)
//typealias ContentView = z_ButtonStyleModifier //: (Missing)
//typealias ContentView = z_DatePickerStyleModifier //: (Missing)
//typealias ContentView = z_GroupBoxStyleModifier //: (Missing)
//typealias ContentView = z_IndexViewStyleModifier //: (Missing)
//typealias ContentView = z_LabelStyleStyleModifier //: (Missing)
//typealias ContentView = z_ListStyleModifier //: (Missing)
//typealias ContentView = z_MenuStyleModifier //: (Missing)
//typealias ContentView = z_NavigationViewStyleModifier //: (Missing)
//typealias ContentView = z_PickerStyleModifier //: (Missing)
//typealias ContentView = z_ProgressViewStyleModifier //: (Missing)
//typealias ContentView = z_TextFieldStyleStyleModifier //: (Missing)
//typealias ContentView = z_ToggleStyleModifier //: (Missing)
// MARK: - Modifiers:System
//typealias ContentView = z_AnyViewModifier //: (Todo)
// MARK: - Modifiers
//typealias ContentView = z__DraggingModifier //: (Missing)
//typealias ContentView = z__EnvironmentKeyWritingModifier //: (Missing)
//typealias ContentView = z__OffsetEffect
//typealias ContentView = z__PaddingLayout
//typealias ContentView = z__TraitWritingModifier //: (Missing)
//typealias ContentView = z_AccessibilityAttachmentModifier //: (Missing)
//typealias ContentView = z_ModifiedContent //: (Missing)
//typealias ContentView = z_ModifierGesture //: (Missing)

// MARK: - SwiftUI:ShapeStyles
//typealias ContentView = z_AngularGradient
//typealias ContentView = z_BackgroundStyle
//typealias ContentView = z_ForegroundStyle
//typealias ContentView = z_ImagePaint
//typealias ContentView = z_LinearGradient
//typealias ContentView = z_RadialGradient
//typealias ContentView = z_SelectionShapeStyle
//typealias ContentView = z_SeparatorShapeStyle
// MARK: - SwiftUI
//typealias ContentView = y_DynaType
//typealias ContentView = z_Angle
//typealias ContentView = z_Axis //: (Incomplete)
//typealias ContentView = z_Binding
//typealias ContentView = z_Color
//typealias ContentView = z_Edge
//typealias ContentView = z_Font //: (Throws)
//typealias ContentView = z_Gradient
//typealias ContentView = z_LocalizedStringKey //: (Missing)
//typealias ContentView = z_PinnedScrollableViews //: (Missing)
//typealias ContentView = z_UnitPoint

// MARK: - Views:Shapes
//typealias ContentView = y_InsettableShape8045
//typealias ContentView = y_Shape13178
//typealias ContentView = z_Capsule
//typealias ContentView = z_Circle
//typealias ContentView = z_ContainerRelativeShape
//typealias ContentView = z_Ellipse
//typealias ContentView = z_OffsetShape
//typealias ContentView = z_Path
//typealias ContentView = z_Rectangle
//typealias ContentView = z_RotatedShape
//typealias ContentView = z_RoundedRectangle
//typealias ContentView = z_ScaledShape
//typealias ContentView = z_TransformedShape
// MARK: - Views:System
//typealias ContentView = z__ConditionalContent //: (Throws)
//typealias ContentView = z__VariadicView //: (Missing)
//typealias ContentView = z_AnyView
//typealias ContentView = z_Tree //: (Missing)
//typealias ContentView = z_TupleView
// MARK: - Views
//typealias ContentView = y_View //: (Refactor out)
//typealias ContentView = y_View17179 //: (Incomplete)
//typealias ContentView = y_View18000 //: (Incomplete)
//typealias ContentView = y_View19000 //: (Incomplete)
//typealias ContentView = y_View20000 //: (Incomplete)
//typealias ContentView = y_View21000 //: (Incomplete)
//typealias ContentView = z_Button
//typealias ContentView = z_ContextMenu
//typealias ContentView = z_DatePicker
//typealias ContentView = z_Divider
//typealias ContentView = z_EditButton
//typealias ContentView = z_EmptyView
//typealias ContentView = z_EquatableView //: (Incomplete)
//typealias ContentView = z_ForEach //: (Incomplete)
//typealias ContentView = z_Form
//typealias ContentView = z_GeometryReader
//typealias ContentView = z_Group //: (Incomplete)
//typealias ContentView = z_GroupBox
//typealias ContentView = z_HSplitView
//typealias ContentView = z_HStack
//typealias ContentView = z_Image
//typealias ContentView = z_LazyHStack
//typealias ContentView = z_LazyVStack
//typealias ContentView = z_List //: (Incomplete)
//typealias ContentView = z_MenuButton
//typealias ContentView = z_NavigationLink
//typealias ContentView = z_NavigationView
//typealias ContentView = z_PasteButton
//typealias ContentView = z_Picker
//typealias ContentView = z_ScrollView
//typealias ContentView = z_Section
//typealias ContentView = z_SecureField
//typealias ContentView = z_Slider
//typealias ContentView = z_Spacer
//typealias ContentView = z_Stepper
//typealias ContentView = z_SubscriptionView //: (Incomplete)
//typealias ContentView = z_TabView
typealias ContentView = z_Text
//typealias ContentView = z_TextField
//typealias ContentView = z_Toggle
//typealias ContentView = z_TouchBar
//typealias ContentView = z_VSplitView
//typealias ContentView = z_VStack
//typealias ContentView = z_ZStack //: (Visually Different)

@main
struct UI_TestsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
                ContentView()
            }
        }
    }
}
