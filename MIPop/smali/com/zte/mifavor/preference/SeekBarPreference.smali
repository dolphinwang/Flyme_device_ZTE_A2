.class public Lcom/zte/mifavor/preference/SeekBarPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field mColor:I

.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    sget v0, Lcom/zte/extres/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    .line 51
    sget-object v2, Landroid/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/SeekBarPreference;->setMax(I)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    sget-object v2, Lcom/zte/extres/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    const/4 v2, 0x0

    sget v3, Lcom/zte/extres/R$layout;->preference_widget_seekbar:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 62
    .local v1, "layoutResId":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_pb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    .line 71
    :goto_0
    sget v2, Lcom/zte/extres/R$styleable;->SeekBarPreference_android_color:I

    iget v3, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 75
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "common_controller_color"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    goto :goto_0
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 149
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 150
    iget p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 152
    :cond_0
    if-gez p1, :cond_1

    .line 153
    const/4 p1, 0x0

    .line 155
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 156
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    .line 157
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->persistInt(I)Z

    .line 158
    if-eqz p2, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    .line 162
    :cond_2
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    .line 92
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 97
    sget v1, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 98
    .local v0, "seekBar":Lcom/zte/mifavor/widget/SeekBarZTE;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 99
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setMax(I)V

    .line 100
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 101
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setEnabled(Z)V

    .line 102
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mColor:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    .line 103
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 124
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 186
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 239
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 234
    check-cast v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    .line 235
    .local v0, "myState":Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 236
    iget v1, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    .line 237
    iget v1, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 238
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 213
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 219
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 220
    .local v0, "myState":Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->progress:I

    .line 221
    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 222
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    .line 114
    return-void

    .line 112
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 194
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 199
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 139
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 140
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    .line 142
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(IZ)V

    .line 146
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 174
    .local v0, "progress":I
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(IZ)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
