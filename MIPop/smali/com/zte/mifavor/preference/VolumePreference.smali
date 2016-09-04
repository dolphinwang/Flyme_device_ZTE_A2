.class public Lcom/zte/mifavor/preference/VolumePreference;
.super Lcom/zte/mifavor/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/VolumePreference$SavedState;,
        Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mColor:I

.field private mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    .line 56
    sget-object v1, Lcom/zte/extres/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_pb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    .line 68
    :goto_0
    sget v1, Lcom/zte/extres/R$styleable;->VolumePreference_android_color:I

    iget v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "common_controller_color"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    goto :goto_0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->unregisterOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V

    .line 157
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 159
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->revertVolume()V

    .line 166
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->stop()V

    .line 167
    iput-object v4, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .line 170
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    .line 87
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStopSample()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 93
    sget v1, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 94
    .local v0, "seekBar":Lcom/zte/mifavor/widget/SeekBarZTE;
    if-eqz v0, :cond_0

    .line 95
    iget v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mColor:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    .line 97
    :cond_0
    new-instance v1, Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .line 98
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 100
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->registerOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 138
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->revertVolume()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/preference/VolumePreference;->cleanup()V

    .line 143
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    iget-object v3, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 113
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 130
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 112
    goto :goto_1

    .line 115
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 120
    :sswitch_1
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 125
    :sswitch_2
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 202
    check-cast v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    .line 203
    .local v0, "myState":Lcom/zte/mifavor/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 204
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getVolumeStore()Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onRestoreInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method public onSampleStarting(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->stopSample()V

    .line 177
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 182
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 187
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    .local v0, "myState":Lcom/zte/mifavor/preference/VolumePreference$SavedState;
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getVolumeStore()Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onSaveInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 191
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    .line 83
    return-void
.end method
