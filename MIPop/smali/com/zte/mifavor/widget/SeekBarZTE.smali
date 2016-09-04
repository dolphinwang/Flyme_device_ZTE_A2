.class public Lcom/zte/mifavor/widget/SeekBarZTE;
.super Landroid/widget/SeekBar;
.source "SeekBarZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final NORMAL:[I

.field public static final STATE_DISABLE:[I

.field public static final STATE_DISABLE_PRESSED:[I

.field public static final STATE_ENABLE:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I


# instance fields
.field mBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mNORMAL_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mPRESS_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field mSELECTED_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mSecondDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field primaryDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field secondDrawable:Landroid/graphics/drawable/ScaleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const v4, -0x101009e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    .line 75
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE_PRESSED:[I

    .line 79
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    .line 89
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE:[I

    .line 94
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_SELECTED:[I

    return-void

    .line 75
    :array_0
    .array-data 4
        -0x101009e
        0x10100a7
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x10100a1
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    sget v0, Lcom/zte/extres/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_pb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 135
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->SeekBar_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    .line 141
    return-void

    .line 131
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


# virtual methods
.method public ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "color"    # I

    .prologue
    const/16 v13, 0xff

    const/4 v12, 0x0

    const/16 v11, 0xf

    const/16 v10, 0x11

    .line 206
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 209
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 210
    .local v0, "Drstate":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setConstantSize(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_off_mtrl_alpha:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 214
    .local v1, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 215
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 216
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 217
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE_PRESSED:[I

    invoke-virtual {v3, v8, v1, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 220
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_off_mtrl_alpha:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 221
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 222
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 223
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 224
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    invoke-virtual {v3, v8, v1, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 227
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 228
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 229
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 230
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    sget v9, Lcom/zte/extres/R$id;->pressed:I

    invoke-virtual {v3, v8, v1, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 233
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 234
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 235
    sget-object v8, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    sget v9, Lcom/zte/extres/R$id;->not_pressed:I

    invoke-virtual {v3, v8, v1, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 238
    sget v2, Lcom/zte/extres/R$id;->not_pressed:I

    .line 239
    .local v2, "fromId":I
    sget v7, Lcom/zte/extres/R$id;->pressed:I

    .line 240
    .local v7, "toId":I
    const/4 v6, 0x0

    .line 241
    .local v6, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 243
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 244
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 245
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 246
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 248
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_001:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 249
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 250
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 251
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 253
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_002:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 254
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 255
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 256
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 258
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_003:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 259
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 260
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 261
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 262
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_004:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 264
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 265
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 267
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_to_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 268
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 269
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 270
    invoke-virtual {v4, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 274
    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 277
    sget v2, Lcom/zte/extres/R$id;->pressed:I

    .line 278
    sget v7, Lcom/zte/extres/R$id;->not_pressed:I

    .line 279
    const/4 v6, 0x0

    .line 280
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 282
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_000:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 283
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 284
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 285
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 287
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_001:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 288
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 289
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 290
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 292
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_002:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 293
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 294
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 295
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_003:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 298
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 299
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 300
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 302
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_004:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 303
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 304
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 305
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zte/extres/R$drawable;->scrubber_control_from_pressed_mtrl_005:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 308
    .restart local v1    # "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 309
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 310
    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 313
    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 314
    return-object v3
.end method

.method public ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 319
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 320
    .local v0, "btdrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/zte/mifavor/widget/JavaChanger;->setColorWidget(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public SetColor(I)V
    .locals 12
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 146
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 151
    .local v4, "r":Landroid/content/res/Resources;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 154
    .local v3, "prgtem":Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 156
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 157
    new-instance v5, Landroid/graphics/drawable/ScaleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v5, v3, v8, v6, v7}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 158
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v9

    aput-object v0, v1, v10

    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v5, v1, v11

    .line 162
    .local v1, "draws":[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 166
    .local v2, "ids":[I
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 167
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v6, 0x1020000

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 168
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000f

    invoke-virtual {v5, v10, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 169
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    invoke-virtual {v5, v11, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 170
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .end local v0    # "bagtem":Landroid/graphics/drawable/Drawable;
    .end local v1    # "draws":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "ids":[I
    .end local v3    # "prgtem":Landroid/graphics/drawable/Drawable;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColorJB(I)V

    goto :goto_0

    .line 162
    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public SetColor(II)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "bgColor"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 178
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 182
    .local v4, "r":Landroid/content/res/Resources;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 185
    .local v3, "prgtem":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 186
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 187
    new-instance v5, Landroid/graphics/drawable/ScaleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v5, v3, v8, v6, v7}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 188
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v9

    aput-object v0, v1, v10

    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v5, v1, v11

    .line 192
    .local v1, "draws":[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 196
    .local v2, "ids":[I
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 197
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v6, 0x1020000

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 198
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000f

    invoke-virtual {v5, v10, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 199
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    invoke-virtual {v5, v11, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 200
    iget-object v5, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .end local v0    # "bagtem":Landroid/graphics/drawable/Drawable;
    .end local v1    # "draws":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "ids":[I
    .end local v3    # "prgtem":Landroid/graphics/drawable/Drawable;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColorJB(I)V

    goto :goto_0

    .line 192
    nop

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public SetColorJB(I)V
    .locals 14
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 329
    .local v5, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_disabled_zte:I

    const/4 v12, 0x1

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 331
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_pressed_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 333
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_SELECTED:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_focused_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 335
    sget-object v10, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_control_normal_zte:I

    const/4 v12, 0x0

    invoke-virtual {p0, v11, p1, v12}, Lcom/zte/mifavor/widget/SeekBarZTE;->ChangeColorDrawableJB(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 340
    .local v8, "r":Landroid/content/res/Resources;
    sget v10, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light_holo:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v10, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 351
    .local v7, "prgtem":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 353
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/JavaChanger;->setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 354
    .local v2, "btDrawable":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    invoke-direct {v6, v2, v10}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 356
    .local v6, "ninepatch2":Landroid/graphics/NinePatch;
    new-instance v9, Lcom/zte/mifavor/widget/NinePatchDrawable;

    invoke-direct {v9, v6}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    .line 358
    .local v9, "testNinePatch":Lcom/zte/mifavor/widget/NinePatchDrawable;
    new-instance v10, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 362
    const/4 v10, 0x3

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v11, v3, v10

    .line 366
    .local v3, "draws":[Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x3

    new-array v4, v10, [I

    fill-array-data v4, :array_0

    .line 370
    .local v4, "ids":[I
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v10, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 371
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x0

    const/high16 v12, 0x1020000

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 372
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x1

    const v12, 0x102000f

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 373
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v11, 0x2

    const v12, 0x102000d

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 374
    iget-object v10, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 366
    nop

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 110
    const/4 v2, 0x0

    goto :goto_0
.end method
