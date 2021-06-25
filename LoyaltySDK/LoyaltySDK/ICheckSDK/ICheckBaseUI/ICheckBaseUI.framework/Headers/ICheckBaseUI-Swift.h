// Generated by Apple Swift version 5.4 (swiftlang-1205.0.26.9 clang-1205.0.19.55)
#ifndef ICHECKBASEUI_SWIFT_H
#define ICHECKBASEUI_SWIFT_H
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import AsyncDisplayKit;
@import CoreGraphics;
@import Foundation;
@import ObjectiveC;
@import UIKit;
@import WebKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="ICheckBaseUI",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class UIColor;

@interface ASButtonNode (SWIFT_EXTENSION(ICheckBaseUI))
- (void)setBackgroundColor:(UIColor * _Nonnull)color for:(UIControlState)state;
@end















SWIFT_PROTOCOL("_TtP12ICheckBaseUI18GATrackingProtocol_")
@protocol GATrackingProtocol
- (void)sendTracking;
@end

@class UIView;
@class UIActivity;

SWIFT_CLASS("_TtC12ICheckBaseUI25ICUActivityViewController")
@interface ICUActivityViewController : UIActivityViewController
- (void)showFrom:(UIView * _Nonnull)view completion:(UIActivityViewControllerCompletionWithItemsHandler _Nullable)completion;
+ (void)showWithItems:(NSArray * _Nonnull)items from:(UIView * _Nonnull)view completion:(UIActivityViewControllerCompletionWithItemsHandler _Nullable)completion;
- (nonnull instancetype)initWithActivityItems:(NSArray * _Nonnull)activityItems applicationActivities:(NSArray<UIActivity *> * _Nullable)applicationActivities OBJC_DESIGNATED_INITIALIZER;
@end

@class NSString;
@class NSCoder;
@class NSNumber;
@class NSBundle;

SWIFT_CLASS("_TtC12ICheckBaseUI17ICUViewController")
@interface ICUViewController : UIViewController <UIGestureRecognizerDelegate>
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, readonly) UIStatusBarStyle preferredStatusBarStyle;
/// Initilize the view controller with a root node derived from initRootNode()
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
/// Unimplemented - DO NOT USE THIS
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)animated;
- (void)viewWillAppear:(BOOL)animated;
- (void)pressedBack;
- (void)pressedBackWithAnimated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI13ICUAlertPopup")
@interface ICUAlertPopup : ICUViewController
- (void)viewDidLoad;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)viewWillLayoutSubviews;
@end



@class UIWindow;

SWIFT_CLASS("_TtC12ICheckBaseUI14ICUApplication")
@interface ICUApplication : NSObject
/// An optional reference to the main UIWindow.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) UIWindow * _Nullable keyWindow;)
+ (UIWindow * _Nullable)keyWindow SWIFT_WARN_UNUSED_RESULT;
/// An optional reference to the top most view controller.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) UIViewController * _Nullable rootViewController;)
+ (UIViewController * _Nullable)rootViewController SWIFT_WARN_UNUSED_RESULT;
/// A boolean indicating if the device is in Landscape mode.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL isLandscape;)
+ (BOOL)isLandscape SWIFT_WARN_UNUSED_RESULT;
/// A boolean indicating if the device is in Portrait mode.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL isPortrait;)
+ (BOOL)isPortrait SWIFT_WARN_UNUSED_RESULT;
/// The current UIInterfaceOrientation value.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) UIInterfaceOrientation orientation;)
+ (UIInterfaceOrientation)orientation SWIFT_WARN_UNUSED_RESULT;
/// Retrieve the height of status bar
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat statusBarHeight;)
+ (CGFloat)statusBarHeight SWIFT_WARN_UNUSED_RESULT;
/// Retrieves the device status bar style.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class) UIStatusBarStyle statusBarStyle;)
+ (UIStatusBarStyle)statusBarStyle SWIFT_WARN_UNUSED_RESULT;
+ (void)setStatusBarStyle:(UIStatusBarStyle)value;
/// Retrieves the device status bar hidden state.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class) BOOL isStatusBarHidden;)
+ (BOOL)isStatusBarHidden SWIFT_WARN_UNUSED_RESULT;
+ (void)setIsStatusBarHidden:(BOOL)value;
/// A reference to the user interface layout direction.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) UIUserInterfaceLayoutDirection userInterfaceLayoutDirection;)
+ (UIUserInterfaceLayoutDirection)userInterfaceLayoutDirection SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat windowBottomSafeInset;)
+ (CGFloat)windowBottomSafeInset SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat windowTopSafeInset;)
+ (CGFloat)windowTopSafeInset SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat topBarHeight;)
+ (CGFloat)topBarHeight SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat defaultNavBarHeight;)
+ (CGFloat)defaultNavBarHeight SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) CGFloat bottomBarHeight;)
+ (CGFloat)bottomBarHeight SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI9ICUButton")
@interface ICUButton : UIButton
@property (nonatomic, copy) void (^ _Nullable onPress)(void);
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initOnPress:(void (^ _Nullable)(void))onPress OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI13ICUBackButton")
@interface ICUBackButton : ICUButton
- (nonnull instancetype)initOnPress:(void (^ _Nullable)(void))onPress OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end

@protocol ASContextTransitioning;

SWIFT_CLASS("_TtC12ICheckBaseUI14ICUDisplayNode")
@interface ICUDisplayNode : ASDisplayNode
@property (nonatomic, copy) void (^ _Nullable animateLayoutTransitionBlock)(id <ASContextTransitioning> _Nonnull);
@property (nonatomic, copy) void (^ _Nullable didCompleteLayoutTransitionBlock)(id <ASContextTransitioning> _Nonnull);
@property (nonatomic, copy) void (^ _Nullable layoutDidFinishBlock)(void);
+ (ICUDisplayNode * _Nonnull)backgroundWithColor:(UIColor * _Nullable)color cornerRadius:(CGFloat)cornerRadius SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)animateLayoutTransition:(id <ASContextTransitioning> _Nonnull)context;
- (void)didCompleteLayoutTransition:(id <ASContextTransitioning> _Nonnull)context;
- (void)layoutDidFinish;
@end

@class ASLayoutSpec;
@class UIImage;
@class UIFont;
@class NSAttributedString;

SWIFT_CLASS("_TtC12ICheckBaseUI17ICUBaseButtonNode")
@interface ICUBaseButtonNode : ICUDisplayNode
@property (nonatomic, copy) ASLayoutSpecBlock _Nullable contentLayoutSpecBlock;
@property (nonatomic, copy) void (^ _Nullable onPress)(ICUBaseButtonNode * _Nonnull);
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
@property (nonatomic) BOOL dismissKeyboardOnTap;
@property (nonatomic) BOOL isEnabled;
@property (nonatomic) BOOL isSelected;
@property (nonatomic) UIEdgeInsets contentEdgeInsets;
@property (nonatomic) enum UIControlContentHorizontalAlignment contentHorizontalAlignment;
- (void)setImage:(UIImage * _Nullable)image for:(UIControlState)state;
- (void)setTitle:(NSString * _Nonnull)title with:(UIFont * _Nullable)font with:(UIColor * _Nullable)color for:(UIControlState)state;
- (void)setAttributedTitle:(NSAttributedString * _Nullable)title for:(UIControlState)state;
- (void)addTarget:(id _Nullable)target action:(SEL _Nonnull)action forControlEvents:(UIControlEvents)controlEvents;
- (void)removeTarget:(id _Nullable)target action:(SEL _Nonnull)action forControlEvents:(UIControlEvents)controlEvents;
@end

@class ICUNavigationBarNode;

SWIFT_CLASS("_TtC12ICheckBaseUI21ICUBaseViewController")
@interface ICUBaseViewController : UIViewController
@property (nonatomic, readonly, strong) ICUNavigationBarNode * _Nonnull navigationBarNode;
@property (nonatomic, strong) ASDisplayNode * _Nonnull rootNode;
@property (nonatomic, strong) ASDisplayNode * _Nonnull container;
@property (nonatomic, strong) ASDisplayNode * _Nullable bottomBarContainer;
@property (nonatomic) UIEdgeInsets insetsBottomBar;
@property (nonatomic, readonly) BOOL bottomBarShadowEnabled;
@property (nonatomic) CGFloat rootNodeBottomSpacing;
@property (nonatomic) UIStatusBarStyle statusbarStyle;
@property (nonatomic, readonly) CGFloat keyboardHeight;
@property (nonatomic) BOOL hideNavigationBar;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewDidLoad;
- (void)prepareNavigationBar;
- (ASDisplayNode * _Nonnull)initRootNode SWIFT_METHOD_FAMILY(none) SWIFT_WARN_UNUSED_RESULT;
- (ASDisplayNode * _Nonnull)initContainer SWIFT_METHOD_FAMILY(none) SWIFT_WARN_UNUSED_RESULT;
- (void)viewWillLayoutSubviews;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil SWIFT_UNAVAILABLE;
@end

@protocol ASLayoutElement;
@class ICUTextNode;

SWIFT_CLASS("_TtC12ICheckBaseUI21ICUBlockContainerNode")
@interface ICUBlockContainerNode : ICUDisplayNode
@property (nonatomic) CGFloat spacing;
@property (nonatomic) UIEdgeInsets containerInsets;
@property (nonatomic, copy) ASLayoutSpecBlock _Nullable contentLayoutBlock;
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, strong) UIColor * _Nullable titleColor;
@property (nonatomic, copy) NSArray<id <ASLayoutElement>> * _Nonnull nodes;
@property (nonatomic, readonly, strong) ICUTextNode * _Nonnull titleNode;
@property (nonatomic, readonly, strong) ICUDisplayNode * _Nonnull containerNode;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI13ICUButtonNode")
@interface ICUButtonNode : ASButtonNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI23ICUButtonHorizontalNode")
@interface ICUButtonHorizontalNode : ICUButtonNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI21ICUButtonVerticalNode")
@interface ICUButtonVerticalNode : ICUButtonNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI11ICUCardNode")
@interface ICUCardNode : ICUDisplayNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)didLoad;
- (void)layoutDidFinish;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI11ICUCellNode")
@interface ICUCellNode : ASCellNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)animateLayoutTransition:(id <ASContextTransitioning> _Nonnull)context;
- (void)layoutDidFinish;
- (BOOL)canBecomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithViewControllerBlock:(ASDisplayNodeViewControllerBlock _Nonnull)viewControllerBlock didLoadBlock:(ASDisplayNodeDidLoadBlock _Nullable)didLoadBlock SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI11ICUTextNode")
@interface ICUTextNode : ASTextNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)animateLayoutTransition:(id <ASContextTransitioning> _Nonnull)context;
- (void)layoutDidFinish;
- (BOOL)canBecomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI20ICUClickableTextNode")
@interface ICUClickableTextNode : ICUTextNode <ASTextNodeDelegate>
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)didLoad;
- (BOOL)textNode:(ASTextNode * _Nonnull)textNode shouldHighlightLinkAttribute:(NSString * _Nonnull)attribute value:(id _Nonnull)value atPoint:(CGPoint)point SWIFT_WARN_UNUSED_RESULT;
- (void)textNode:(ASTextNode * _Nonnull)textNode tappedLinkAttribute:(NSString * _Nonnull)attribute value:(id _Nonnull)value atPoint:(CGPoint)point textRange:(NSRange)textRange;
- (void)textNodeTappedTruncationToken:(ASTextNode * _Nonnull)textNode;
- (BOOL)canBecomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
@end

@class UICollectionViewLayoutAttributes;

SWIFT_CLASS("_TtC12ICheckBaseUI34ICUCollectionSectionBackgroundView")
@interface ICUCollectionSectionBackgroundView : UICollectionReusableView
- (void)applyLayoutAttributes:(UICollectionViewLayoutAttributes * _Nonnull)layoutAttributes;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSIndexPath;

SWIFT_CLASS("_TtC12ICheckBaseUI27ICUCollectionViewFlowLayout")
@interface ICUCollectionViewFlowLayout : UICollectionViewFlowLayout
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (UICollectionViewLayoutAttributes * _Nullable)layoutAttributesForDecorationViewOfKind:(NSString * _Nonnull)elementKind atIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (NSArray<UICollectionViewLayoutAttributes *> * _Nullable)layoutAttributesForElementsInRect:(CGRect)rect SWIFT_WARN_UNUSED_RESULT;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI33ICUCollectionViewLayoutAttributes")
@interface ICUCollectionViewLayoutAttributes : UICollectionViewLayoutAttributes
- (id _Nonnull)copyWithZone:(struct _NSZone * _Nullable)zone SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI11ICUDashNode")
@interface ICUDashNode : ICUDisplayNode
@property (nonatomic, copy) NSArray<NSNumber *> * _Nonnull linePattern;
@property (nonatomic) CGFloat lineWidth;
@property (nonatomic, strong) UIColor * _Nonnull lineColor;
- (void)didLoad;
- (void)layoutDidFinish;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI15ICUDragableNode")
@interface ICUDragableNode : ICUDisplayNode
- (void)didLoad;
- (void)hide;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


@class ASTextKitComponents;

SWIFT_CLASS("_TtC12ICheckBaseUI19ICUEditableTextNode")
@interface ICUEditableTextNode : ASEditableTextNode
- (void)didLoad;
- (void)layoutDidFinish;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithTextKitComponents:(ASTextKitComponents * _Nonnull)textKitComponents placeholderTextKitComponents:(ASTextKitComponents * _Nonnull)placeholderTextKitComponents OBJC_DESIGNATED_INITIALIZER;
@end

@class ICUImageNode;

SWIFT_CLASS("_TtC12ICheckBaseUI21ICUEmptyListContainer")
@interface ICUEmptyListContainer : ICUDisplayNode
@property (nonatomic, readonly, strong) ICUImageNode * _Nonnull imageNode;
@property (nonatomic, strong) ASDisplayNode * _Nullable customNode;
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, strong) UIFont * _Null_unspecified titleFont;
@property (nonatomic, strong) UIColor * _Null_unspecified titleColor;
@property (nonatomic, copy) NSString * _Nullable subTitle;
@property (nonatomic, strong) UIFont * _Null_unspecified subTitleFont;
@property (nonatomic, strong) UIColor * _Null_unspecified subTitleColor;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)didLoad;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI25ICUHorizontalTextIconNode")
@interface ICUHorizontalTextIconNode : ICUButtonHorizontalNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI18ICUIconInfoRowNode")
@interface ICUIconInfoRowNode : ICUDisplayNode
@property (nonatomic, copy) void (^ _Nullable clickedHandler)(void);
@property (nonatomic, strong) UIImage * _Nullable icon;
@property (nonatomic, copy) NSString * _Nullable key;
@property (nonatomic, copy) NSString * _Nullable value;
@property (nonatomic) CGFloat iconSize;
@property (nonatomic) CGFloat padding;
@property (nonatomic) CGFloat horizontalInset;
@property (nonatomic, strong) UIColor * _Nonnull valueColor;
@property (nonatomic, strong) NSAttributedString * _Nullable valueAttributedText;
@property (nonatomic, strong) UIFont * _Nonnull keyFont;
@property (nonatomic, strong) UIFont * _Nonnull valueFont;
- (void)didLoad;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
- (void)setIconLink:(NSString * _Nullable)link;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI18ICUImageDownloader")
@interface ICUImageDownloader : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI12ICUImageNode")
@interface ICUImageNode : ASImageNode
- (BOOL)canBecomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


@class ASMultiplexImageNode;
@class NSURL;

SWIFT_CLASS("_TtC12ICheckBaseUI16ICULazyImageNode")
@interface ICULazyImageNode : ICUCellNode <ASMultiplexImageNodeDataSource, ASMultiplexImageNodeDelegate>
@property (nonatomic) UIViewContentMode contentMode;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (NSURL * _Nullable)multiplexImageNode:(ASMultiplexImageNode * _Nonnull)imageNode URLForImageIdentifier:(ASImageIdentifier _Nonnull)imageIdentifier SWIFT_WARN_UNUSED_RESULT;
- (UIImage * _Nullable)multiplexImageNode:(ASMultiplexImageNode * _Nonnull)imageNode imageForImageIdentifier:(ASImageIdentifier _Nonnull)imageIdentifier SWIFT_WARN_UNUSED_RESULT;
- (void)multiplexImageNode:(ASMultiplexImageNode * _Nonnull)imageNode didFinishDownloadingImageWithIdentifier:(ASImageIdentifier _Nonnull)imageIdentifier error:(NSError * _Nullable)error;
@end


@interface ICULazyImageNode (SWIFT_EXTENSION(ICheckBaseUI))
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI22ICUMonthYearPickerView")
@interface ICUMonthYearPickerView : UIControl
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIPickerView;

@interface ICUMonthYearPickerView (SWIFT_EXTENSION(ICheckBaseUI)) <UIPickerViewDelegate>
- (void)pickerView:(UIPickerView * _Nonnull)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
@end


@interface ICUMonthYearPickerView (SWIFT_EXTENSION(ICheckBaseUI)) <UIPickerViewDataSource>
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView * _Nonnull)pickerView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)pickerView:(UIPickerView * _Nonnull)pickerView numberOfRowsInComponent:(NSInteger)component SWIFT_WARN_UNUSED_RESULT;
- (UIView * _Nonnull)pickerView:(UIPickerView * _Nonnull)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView * _Nullable)view SWIFT_WARN_UNUSED_RESULT;
@end

@class UIEvent;

SWIFT_CLASS("_TtC12ICheckBaseUI20ICUNavigationBarNode")
@interface ICUNavigationBarNode : ASDisplayNode
@property (nonatomic, strong) UIColor * _Null_unspecified tintColor;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)didLoad;
- (void)layoutDidFinish;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent * _Nullable)event SWIFT_WARN_UNUSED_RESULT;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI24ICUNavigationContentView")
@interface ICUNavigationContentView : UIView
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI22ICUNavigationTitleView")
@interface ICUNavigationTitleView : UIView
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (CGSize)sizeThatFits:(CGSize)size SWIFT_WARN_UNUSED_RESULT;
- (void)layoutSubviews;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI17ICUNavigationView")
@interface ICUNavigationView : UIView
@property (nonatomic) BOOL showLineView;
@property (nonatomic, strong) UIColor * _Nonnull defaultTitleColor;
@property (nonatomic, strong) UIColor * _Nonnull defaultActionColor;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (CGSize)sizeThatFits:(CGSize)size SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end

@protocol ASImageCacheProtocol;
@protocol ASImageDownloaderProtocol;

SWIFT_CLASS("_TtC12ICheckBaseUI19ICUNetworkImageNode")
@interface ICUNetworkImageNode : ASNetworkImageNode
- (nonnull instancetype)initWithCache:(id <ASImageCacheProtocol> _Nullable)cache downloader:(id <ASImageDownloaderProtocol> _Nonnull)downloader OBJC_DESIGNATED_INITIALIZER;
- (BOOL)canBecomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
@end




SWIFT_CLASS("_TtC12ICheckBaseUI22ICUNotificationManager")
@interface ICUNotificationManager : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIPageControl;

SWIFT_CLASS("_TtC12ICheckBaseUI18ICUPageControlNode")
@interface ICUPageControlNode : ICUDisplayNode
@property (nonatomic, readonly, strong) UIPageControl * _Nonnull pageControl;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI13ICUScrollNode")
@interface ICUScrollNode : ASScrollNode
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)layoutDidFinish;
@end

@class UISwitch;

SWIFT_CLASS("_TtC12ICheckBaseUI13ICUSwitchNode")
@interface ICUSwitchNode : ICUDisplayNode
@property (nonatomic, copy) void (^ _Nullable valueChanged)(BOOL);
@property (nonatomic) BOOL isOn;
@property (nonatomic, readonly, strong) UISwitch * _Nonnull switchControl;
- (ASLayoutSpec * _Nonnull)layoutSpecThatFits:(ASSizeRange)constrainedSize SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI12ICUTextField")
@interface ICUTextField : UITextField
@property (nonatomic, copy) void (^ _Nullable presentHandler)(void);
@property (nonatomic, copy) void (^ _Nullable returnHandler)(void);
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end




@interface ICUTextField (SWIFT_EXTENSION(ICheckBaseUI))
@property (nonatomic, copy) NSString * _Nullable value;
@end


@interface ICUTextField (SWIFT_EXTENSION(ICheckBaseUI)) <UITextFieldDelegate>
- (BOOL)textFieldShouldBeginEditing:(UITextField * _Nonnull)textField SWIFT_WARN_UNUSED_RESULT;
- (BOOL)textFieldShouldReturn:(UITextField * _Nonnull)textField SWIFT_WARN_UNUSED_RESULT;
- (BOOL)textField:(UITextField * _Nonnull)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString * _Nonnull)string SWIFT_WARN_UNUSED_RESULT;
- (BOOL)textFieldShouldEndEditing:(UITextField * _Nonnull)textField SWIFT_WARN_UNUSED_RESULT;
@end



SWIFT_CLASS("_TtC12ICheckBaseUI16ICUTextFieldNode")
@interface ICUTextFieldNode : ICUDisplayNode
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, copy) NSDictionary<NSAttributedStringKey, id> * _Nonnull placeholderAttributes;)
+ (NSDictionary<NSAttributedStringKey, id> * _Nonnull)placeholderAttributes SWIFT_WARN_UNUSED_RESULT;
+ (void)setPlaceholderAttributes:(NSDictionary<NSAttributedStringKey, id> * _Nonnull)value;
@property (nonatomic, copy) NSDictionary<NSAttributedStringKey, id> * _Nonnull placeholderAttributes;
@property (nonatomic, readonly, strong) ICUTextField * _Nonnull textField;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic) UIEdgeInsets textInsets;
@property (nonatomic, copy) void (^ _Nullable returnHandler)(void);
@property (nonatomic, copy) NSString * _Nullable text;
@property (nonatomic, copy) NSString * _Nullable placeholder;
@property (nonatomic, strong) NSAttributedString * _Nullable attributedPlaceHolder;
@property (nonatomic, strong) UIFont * _Nullable font;
@property (nonatomic, strong) UIColor * _Nullable textColor;
@property (nonatomic) BOOL isEnabled;
@end




@class NSTextContainer;

SWIFT_CLASS("_TtC12ICheckBaseUI11ICUTextView")
@interface ICUTextView : UITextView
- (nonnull instancetype)initWithFrame:(CGRect)frame textContainer:(NSTextContainer * _Nullable)textContainer SWIFT_UNAVAILABLE;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI15ICUTextViewNode")
@interface ICUTextViewNode : ICUDisplayNode
@property (nonatomic, readonly, strong) ICUTextView * _Nonnull textView;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, copy) NSString * _Nullable text;
@property (nonatomic, copy) NSString * _Nullable placeholder;
@property (nonatomic) BOOL isEnabled;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI7ICUView")
@interface ICUView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
@end



@class WKWebViewConfiguration;
@class WKNavigation;

SWIFT_CLASS("_TtC12ICheckBaseUI10ICUWebView")
@interface ICUWebView : WKWebView
- (nonnull instancetype)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration * _Nonnull)configuration SWIFT_UNAVAILABLE;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (WKNavigation * _Nullable)loadHTMLString:(NSString * _Nonnull)string baseURL:(NSURL * _Nullable)baseURL SWIFT_WARN_UNUSED_RESULT;
- (void)loadHTMLString:(NSString * _Nonnull)string baseURL:(NSURL * _Nullable)baseURL width:(CGFloat)width;
@end


@class WKNavigationAction;

@interface ICUWebView (SWIFT_EXTENSION(ICheckBaseUI)) <WKNavigationDelegate>
- (void)webView:(WKWebView * _Nonnull)webView didFinishNavigation:(WKNavigation * _Null_unspecified)navigation;
- (void)webView:(WKWebView * _Nonnull)webView didFailNavigation:(WKNavigation * _Null_unspecified)navigation withError:(NSError * _Nonnull)error;
- (void)webView:(WKWebView * _Nonnull)webView didFailProvisionalNavigation:(WKNavigation * _Null_unspecified)navigation withError:(NSError * _Nonnull)error;
- (void)webView:(WKWebView * _Nonnull)webView decidePolicyForNavigationAction:(WKNavigationAction * _Nonnull)navigationAction decisionHandler:(void (^ _Nonnull)(WKNavigationActionPolicy))decisionHandler;
@end


SWIFT_CLASS("_TtC12ICheckBaseUI19KeyboardDismissView")
@interface KeyboardDismissView : ICUView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end






@interface UIColor (SWIFT_EXTENSION(ICheckBaseUI))
- (nonnull instancetype)initWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
- (nonnull instancetype)initWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b a:(NSInteger)a;
+ (UIColor * _Nonnull)rgb:(NSInteger)rgb SWIFT_WARN_UNUSED_RESULT;
+ (UIColor * _Nonnull)rgba:(NSInteger)rgba SWIFT_WARN_UNUSED_RESULT;
+ (UIColor * _Nonnull)colorWithHexString:(NSString * _Nullable)hexString SWIFT_WARN_UNUSED_RESULT;
@end













@interface UINavigationController (SWIFT_EXTENSION(ICheckBaseUI))
+ (UIViewController * _Nullable)topViewController SWIFT_WARN_UNUSED_RESULT;
+ (UINavigationController * _Nullable)topNavigationController SWIFT_WARN_UNUSED_RESULT;
@end











@interface UIView (SWIFT_EXTENSION(ICheckBaseUI))
/// the insets to padding, for iPhoneX
@property (nonatomic, readonly) UIEdgeInsets safeInsets;
/// Find the current responder. To scroll
///
/// returns:
/// the view is current responder
- (UIView * _Nullable)firstResponder SWIFT_WARN_UNUSED_RESULT;
@end




@interface UIViewController (SWIFT_EXTENSION(ICheckBaseUI))
- (void)addToParentViewController:(UIViewController * _Nonnull)parent;
- (void)addToSuperview:(UIView * _Nonnull)superview;
@end


@interface UIViewController (SWIFT_EXTENSION(ICheckBaseUI))
- (void)pushFrom:(UINavigationController * _Nullable)navigationController animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;
- (void)presentFrom:(UIViewController * _Nullable)viewController animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;
- (void)popWithAnimated:(BOOL)animated;
@end


@interface _ASDisplayView (SWIFT_EXTENSION(ICheckBaseUI))
@property (nonatomic, readonly) BOOL canBecomeFirstResponder;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif