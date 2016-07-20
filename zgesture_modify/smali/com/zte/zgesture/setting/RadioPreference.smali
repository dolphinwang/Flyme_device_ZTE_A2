.class public Lcom/zte/zgesture/setting/RadioPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "RadioPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/setting/RadioPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 29
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    const v2, 0x7f06006f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 50
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 51
    iget-boolean v2, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/zgesture/setting/RadioPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 54
    const/4 v1, 0x1

    .line 55
    .local v1, "eventType":I
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 58
    .end local v1    # "eventType":I
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onClick()V

    .line 63
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 64
    .local v0, "newValue":Z
    :goto_0
    iput-boolean v1, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 63
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    .restart local v0    # "newValue":Z
    :cond_2
    if-nez v0, :cond_0

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    .line 210
    .local v0, "myState":Lcom/zte/zgesture/setting/RadioPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/zgesture/setting/RadioPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    iget-boolean v1, v0, Lcom/zte/zgesture/setting/RadioPreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 191
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 196
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/zgesture/setting/RadioPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 197
    .local v0, "myState":Lcom/zte/zgesture/setting/RadioPreference$SavedState;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/zte/zgesture/setting/RadioPreference$SavedState;->checked:Z

    move-object v1, v0

    .line 198
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/RadioPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/RadioPreference;->setChecked(Z)V

    .line 186
    return-void

    .line 185
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 80
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/zte/zgesture/setting/RadioPreference;->persistBoolean(Z)Z

    .line 82
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/RadioPreference;->notifyDependencyChange(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->notifyChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/RadioPreference;->mDisableDependentsState:Z

    .line 176
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/RadioPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->notifyChanged()V

    .line 137
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/RadioPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zte/zgesture/setting/RadioPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/RadioPreference;->notifyChanged()V

    .line 108
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iget-boolean v3, p0, Lcom/zte/zgesture/setting/RadioPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    .line 97
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 96
    .end local v0    # "shouldDisable":Z
    :cond_2
    iget-boolean v3, p0, Lcom/zte/zgesture/setting/RadioPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
