.class public Lcom/zte/mifavor/preference/SeekBarDialogPreference;
.super Lcom/zte/mifavor/preference/DialogPreference;
.source "SeekBarDialogPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarDialogPreference"


# instance fields
.field private mColor:I

.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    .line 54
    :goto_0
    sget-object v1, Lcom/zte/extres/R$styleable;->SeekBarDialogPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/zte/extres/R$styleable;->SeekBarDialogPreference_android_color:I

    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    sget v1, Lcom/zte/extres/R$layout;->seekbar_dialog:I

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->createActionButtons()V

    .line 62
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void

    .line 51
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "common_controller_color"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    goto :goto_0
.end method

.method protected static getSeekBar(Landroid/view/View;)Lcom/zte/mifavor/widget/SeekBarZTE;
    .locals 1
    .param p0, "dialogView"    # Landroid/view/View;

    .prologue
    .line 102
    sget v0, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    return-object v0
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    .line 107
    return-void
.end method

.method public createActionButtons()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 81
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 82
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 88
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    sget v2, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 96
    .local v1, "seekBar":Lcom/zte/mifavor/widget/SeekBarZTE;
    if-eqz v1, :cond_0

    .line 97
    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->mColor:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    .line 99
    :cond_0
    return-void

    .line 92
    .end local v1    # "seekBar":Lcom/zte/mifavor/widget/SeekBarZTE;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
