.class public Lcom/zte/mifavor/widget/CheckBoxZTE;
.super Landroid/widget/CheckBox;
.source "CheckBoxZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final STATE_DISABLE_CHECKED:[I

.field public static final STATE_DISABLE_UNCHECKED:[I

.field public static final STATE_ENABLE_CHECKED:[I

.field public static final STATE_ENABLE_UNCHECKED:[I

.field static mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field static mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field bgColorflag:I

.field mBgColor:I

.field mDIS_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field storeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    return-void

    .line 97
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 100
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 103
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 106
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/CheckBoxZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    sget v0, Lcom/zte/extres/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/CheckBoxZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput v2, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    .line 94
    iput v2, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_cb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 142
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->CheckBox:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->CheckBox_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColor(I)V

    .line 147
    return-void

    .line 138
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "common_controller_color"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_0
.end method

.method private SetColorForAndroid4x(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 422
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 424
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_off_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 426
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->storeColor:I

    if-eq p1, v3, :cond_1

    .line 427
    :cond_0
    sget v3, Lcom/zte/extres/R$drawable;->btn_check_on_zte_light:I

    invoke-virtual {p0, v3, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 429
    :cond_1
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 435
    .local v2, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 438
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_off_disabled_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 440
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->storeColor:I

    if-eq p1, v3, :cond_3

    .line 441
    :cond_2
    sget v3, Lcom/zte/extres/R$drawable;->btn_check_on_disabled_zte_light:I

    invoke-virtual {p0, v3, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 443
    :cond_3
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 445
    .restart local v2    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->requestLayout()V

    .line 448
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->invalidate()V

    .line 450
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    const/16 v13, 0x42

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, -0x76000000

    const/16 v9, 0xf

    .line 166
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 171
    .local v2, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 172
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 174
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v2, v7, v0, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 177
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 178
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 180
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 182
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v7, v0, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 185
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 186
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 187
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_CHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 190
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_0

    .line 193
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 197
    :goto_0
    sget-object v7, Lcom/zte/mifavor/widget/CheckBoxZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v8, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v7, v0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 200
    sget v1, Lcom/zte/extres/R$id;->off:I

    .line 201
    .local v1, "fromId":I
    sget v6, Lcom/zte/extres/R$id;->on:I

    .line 202
    .local v6, "toId":I
    const/4 v5, 0x0

    .line 203
    .local v5, "reversible":Z
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 205
    .local v3, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_1

    .line 208
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 212
    :goto_1
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 214
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 215
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_2

    .line 217
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 221
    :goto_2
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 224
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_3

    .line 226
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 230
    :goto_3
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 232
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_4

    .line 235
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 239
    :goto_4
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 240
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_5

    .line 243
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 247
    :goto_5
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 250
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_6

    .line 252
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 256
    :goto_6
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 258
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 259
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_7

    .line 261
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 265
    :goto_7
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 267
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 268
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_8

    .line 270
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 274
    :goto_8
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 277
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 278
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 280
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 281
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 282
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 284
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 286
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 288
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 289
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 290
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 291
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 292
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 293
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 295
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 296
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 297
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 299
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 300
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 301
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 303
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 304
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 305
    invoke-virtual {v3, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 310
    sget v1, Lcom/zte/extres/R$id;->on:I

    .line 311
    sget v6, Lcom/zte/extres/R$id;->off:I

    .line 312
    const/4 v5, 0x0

    .line 313
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 315
    .local v4, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 316
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 317
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 319
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_001:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 320
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 321
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 323
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_002:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 324
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 325
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 327
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_003:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 328
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 329
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 331
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_004:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 332
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 333
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 335
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_005:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 336
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 337
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 339
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_006:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 340
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 341
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 343
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_007:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 344
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 345
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 348
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_008:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 349
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 350
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 352
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_009:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 353
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_9

    .line 355
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 359
    :goto_9
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 361
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_010:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 362
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_a

    .line 364
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 368
    :goto_a
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 370
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_011:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 371
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_b

    .line 373
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 377
    :goto_b
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 379
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_012:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 380
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_c

    .line 382
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 386
    :goto_c
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 388
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_013:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 389
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_d

    .line 391
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 395
    :goto_d
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 397
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_014:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 398
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_e

    .line 400
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 404
    :goto_e
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 406
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_off_mtrl_015:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 407
    .restart local v0    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    if-ne v7, v11, :cond_f

    .line 409
    iget v7, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 413
    :goto_f
    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 415
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 417
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/CheckBoxZTE;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    return-void

    .line 195
    .end local v1    # "fromId":I
    .end local v3    # "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v4    # "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    .end local v5    # "reversible":Z
    .end local v6    # "toId":I
    :cond_0
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_0

    .line 210
    .restart local v1    # "fromId":I
    .restart local v3    # "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v5    # "reversible":Z
    .restart local v6    # "toId":I
    :cond_1
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_2

    .line 228
    :cond_3
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_3

    .line 237
    :cond_4
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_4

    .line 245
    :cond_5
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_5

    .line 254
    :cond_6
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_6

    .line 263
    :cond_7
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_7

    .line 272
    :cond_8
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_8

    .line 357
    .restart local v4    # "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    :cond_9
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_9

    .line 366
    :cond_a
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_a

    .line 375
    :cond_b
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_b

    .line 384
    :cond_c
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto/16 :goto_c

    .line 393
    :cond_d
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto :goto_d

    .line 402
    :cond_e
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto :goto_e

    .line 411
    :cond_f
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    goto :goto_f
.end method


# virtual methods
.method public ChangeColorDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 454
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 455
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/zte/mifavor/widget/JavaChanger;->setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public SetColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid50(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public SetColor(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "bgColor"    # I

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->bgColorflag:I

    .line 159
    iput p2, p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->mBgColor:I

    .line 160
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid50(I)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 118
    const/4 v2, 0x0

    goto :goto_0
.end method
