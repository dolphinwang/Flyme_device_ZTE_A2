.class public Lcom/zte/mifavor/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;,
        Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;,
        Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;,
        Lcom/zte/mifavor/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final MODE_CLOCK:I = 0x2

.field private static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    sget v0, Lcom/zte/extres/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    .line 90
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->is24HourView()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 211
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 198
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 199
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 185
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 186
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 187
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 188
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 180
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setCurrentHour(Ljava/lang/Integer;)V

    .line 97
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 111
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 127
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Lcom/zte/mifavor/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePicker$OnTimeChangedListener;)V

    .line 143
    return-void
.end method

.method public setValidationCallback(Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker;->mDelegate:Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;->setValidationCallback(Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;)V

    .line 153
    return-void
.end method
