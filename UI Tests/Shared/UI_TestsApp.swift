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
//typealias ContentView = Z01a_Json //: (Incomplete)

// MARK: - Modifiers:System
//typealias ContentView = Z01a__TabViewStyleModifier //: (Todo)
//typealias ContentView = Z01a_ButtonStyleModifier //: (Missing)
//typealias ContentView = Z01a_DatePickerStyleModifier //: (Missing)
//typealias ContentView = Z01a_GroupBoxStyleModifier //: (Missing)
//typealias ContentView = Z01a_IndexViewStyleModifier //: (Missing)
//typealias ContentView = Z01a_LabelStyleStyleModifier //: (Missing)
//typealias ContentView = Z01a_ListStyleModifier //: (Missing)
//typealias ContentView = Z01a_MenuStyleModifier //: (Missing)
//typealias ContentView = Z01a_NavigationViewStyleModifier //: (Missing)
//typealias ContentView = Z01a_PickerStyleModifier //: (Missing)
//typealias ContentView = Z01a_ProgressViewStyleModifier //: (Missing)
//typealias ContentView = Z01a_TextFieldStyleStyleModifier //: (Missing)
//typealias ContentView = Z01a_ToggleStyleModifier //: (Missing)
// MARK: - Modifiers:System
//typealias ContentView = Z01a_AnyViewModifier //: (Todo)
// MARK: - Modifiers
//typealias ContentView = Z01a__DraggingModifier //: (Missing)
//typealias ContentView = Z01a__EnvironmentKeyWritingModifier //: (Missing)
//typealias ContentView = Z01a__OffsetEffect
//typealias ContentView = Z01a__PaddingLayout
//typealias ContentView = Z01a__TraitWritingModifier //: (Missing)
//typealias ContentView = Z01a_AccessibilityAttachmentModifier //: (Missing)
//typealias ContentView = Z01a_ModifiedContent //: (Missing)
//typealias ContentView = Z01a_ModifierGesture //: (Missing)
//typealias ContentView = Z01a_View //: (Refactor out)
//typealias ContentView = Z01a_View17175 //: (Incomplete)
//typealias ContentView = Z01a_View18000 //: (Incomplete)
//typealias ContentView = Z01a_View19000 //: (Incomplete)
//typealias ContentView = Z01a_View20000 //: (Incomplete)
//typealias ContentView = Z01a_View21000 //: (Incomplete)

// MARK: - SwiftUI
//typealias ContentView = _DynaType
//typealias ContentView = Z01a_Color
//typealias ContentView = Z01a_Edge //: (Missing)
//typealias ContentView = Z01a_Font //: (Throws)
//typealias ContentView = Z01a_LocalizedStringKey //: (Missing)
//typealias ContentView = Z01a_PinnedScrollableViews //: (Missing)

// MARK: - Views:Shapes
//typealias ContentView = Z01a_Capsule
//typealias ContentView = Z01a_Circle
//typealias ContentView = Z01a_ContainerRelativeShape
//typealias ContentView = Z01a_Ellipse
typealias ContentView = Z01a_OffsetShape //: (Incomplete)
//typealias ContentView = Z01a_Path //: (Incomplete)
//typealias ContentView = Z01a_Rectangle
//typealias ContentView = Z01a_RotatedShape //: (Incomplete)
//typealias ContentView = Z01a_RoundedRectangle
//typealias ContentView = Z01a_ScaledShape //: (Incomplete)
//typealias ContentView = Z01a_TransformedShape //: (Incomplete)
// MARK: - Views:System
//typealias ContentView = Z01a__ConditionalContent //: (Throws)
//typealias ContentView = Z01a__VariadicView //: (Missing)
//typealias ContentView = Z01a_AnyView
//typealias ContentView = Z01a_Tree //: (Missing)
//typealias ContentView = Z01a_TupleView
// MARK: - Views
//typealias ContentView = Z01a_Button
//typealias ContentView = Z01a_ContextMenu
//typealias ContentView = Z01a_DatePicker
//typealias ContentView = Z01a_Divider
//typealias ContentView = Z01a_EditButton
//typealias ContentView = Z01a_EmptyView
//typealias ContentView = Z01a_ForEach
//typealias ContentView = Z01a_HStack
//typealias ContentView = Z01a_Image
//typealias ContentView = Z01a_LazyHStack
//typealias ContentView = Z01a_LazyVStack
//typealias ContentView = Z01a_Picker
//typealias ContentView = Z01a_Slider
//typealias ContentView = Z01a_Spacer
//typealias ContentView = Z01a_Stepper
//typealias ContentView = Z01a_Text //: (Incomplete)
//typealias ContentView = Z01a_Toggle
//typealias ContentView = Z01a_VStack
//typealias ContentView = Z01a_ZStack //: (Visually Different)

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
