.class public Lcom/zte/mifavor/widget/SwitchZTE;
.super Landroid/widget/Switch;
.source "SwitchZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SetColorable;


# static fields
.field public static final STATE_DISABLE_CHECKED:[I

.field public static final STATE_DISABLE_UNCHECKED:[I

.field public static final STATE_ENABLE_CHECKED:[I

.field public static final STATE_ENABLE_UNCHECKED:[I

.field public static final STATE_THMB_CHECKED:[I

.field public static final STATE_THMB_UNCHECKED:[I

.field static mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field static mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field mColor:I

.field private mContext:Landroid/content/Context;

.field mDIS_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_UNCECDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOnActionBar:Z

.field storeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_UNCHECKED:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_CHECKED:[I

    return-void

    .line 106
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 112
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 115
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 122
    :array_5
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    sget v0, Lcom/zte/extres/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 104
    iput v2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mColor:I

    .line 172
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOn(Ljava/lang/CharSequence;)V

    .line 173
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOff(Ljava/lang/CharSequence;)V

    .line 174
    iput-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_sw_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 185
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->Switch_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColor(I)V

    .line 190
    return-void

    .line 181
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 104
    iput v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mColor:I

    .line 193
    return-void
.end method

.method private SetColorForActionBar()V
    .locals 18

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "color_ccd"

    sget v17, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 225
    .local v1, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$color;->mfv_common_acb_sw_on:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 227
    .local v12, "off_bg_color":I
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 228
    .local v6, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 229
    .local v8, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 230
    .local v9, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/NinePatchDrawable;

    .line 231
    .local v10, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/NinePatchDrawable;

    .line 233
    .local v11, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 234
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 235
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 236
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 238
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 239
    const/16 v15, 0x4c

    invoke-virtual {v8, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 240
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v15, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    const/16 v15, 0x4c

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 243
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v15, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 245
    const/16 v15, 0x1a

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 246
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v15, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 247
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    const/16 v15, 0x1a

    invoke-virtual {v11, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 249
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v15, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 251
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 254
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 255
    .local v7, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 256
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 257
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v7, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 261
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 262
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 263
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v16, Lcom/zte/extres/R$id;->on:I

    move/from16 v0, v16

    invoke-virtual {v3, v15, v7, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 266
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 267
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 268
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v16, Lcom/zte/extres/R$id;->off:I

    move/from16 v0, v16

    invoke-virtual {v3, v15, v7, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 271
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 272
    const/16 v15, 0x7d

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 273
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 274
    sget-object v15, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v7, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 276
    sget v2, Lcom/zte/extres/R$id;->off:I

    .line 277
    .local v2, "fromId":I
    sget v14, Lcom/zte/extres/R$id;->on:I

    .line 278
    .local v14, "toId":I
    const/4 v13, 0x0

    .line 279
    .local v13, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 281
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 282
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 283
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 284
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 287
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 288
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 289
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 292
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 293
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 294
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 297
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 298
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 302
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 303
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 304
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 307
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 308
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 309
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 312
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 313
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 314
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 317
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 318
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 319
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 322
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 323
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 324
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 327
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 328
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 329
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 332
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 333
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 334
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 337
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 338
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 339
    const/16 v15, 0xf

    invoke-virtual {v4, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 340
    invoke-virtual {v3, v2, v14, v4, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 343
    sget v2, Lcom/zte/extres/R$id;->on:I

    .line 344
    sget v14, Lcom/zte/extres/R$id;->off:I

    .line 345
    const/4 v13, 0x0

    .line 346
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 348
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 349
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 350
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 351
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 354
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 355
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 356
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 359
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 360
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 361
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 364
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 365
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 366
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 369
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 370
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 371
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 374
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 375
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 376
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 379
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 380
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 381
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 384
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 385
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 386
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 389
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 390
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 391
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 394
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 395
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 396
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 399
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 400
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 401
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012_2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 404
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 405
    const v15, -0xe0e0f

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 406
    const/16 v15, 0xf

    invoke-virtual {v5, v7, v15}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 408
    invoke-virtual {v3, v2, v14, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method private SetColorForAndroid4x(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 603
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 605
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 607
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_1

    .line 608
    :cond_0
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 610
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 615
    .local v3, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 616
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 618
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_3

    .line 619
    :cond_2
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 621
    :cond_3
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 623
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 624
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 627
    .local v2, "mTempThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 629
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 631
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 633
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 635
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 415
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 416
    .local v4, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 417
    .local v6, "npdrawable1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 418
    .local v7, "npdrawable2":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 419
    .local v8, "npdrawable3":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 421
    .local v9, "npdrawable4":Landroid/graphics/drawable/Drawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 422
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 423
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 424
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 426
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 427
    const/16 v12, 0x4c

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 428
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v4, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 429
    const/high16 v12, -0x22000000

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 430
    const/16 v12, 0x4c

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 431
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 432
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 433
    const/16 v12, 0x1a

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v4, v12, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 435
    const/high16 v12, -0x22000000

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 436
    const/16 v12, 0x1a

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 437
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 439
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 442
    .local v1, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 443
    .local v5, "npdrawable":Landroid/graphics/drawable/Drawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 444
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 445
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 449
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 450
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 451
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 454
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 455
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 456
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 459
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 460
    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 461
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 462
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 464
    sget v0, Lcom/zte/extres/R$id;->off:I

    .line 465
    .local v0, "fromId":I
    sget v11, Lcom/zte/extres/R$id;->on:I

    .line 466
    .local v11, "toId":I
    const/4 v10, 0x0

    .line 467
    .local v10, "reversible":Z
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 469
    .local v2, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 470
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 471
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 472
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 475
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 476
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 477
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 480
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 481
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 482
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 485
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 486
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 487
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 490
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 491
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 492
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 495
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 496
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 497
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 500
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 501
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 502
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 505
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 506
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 507
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 510
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 511
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 512
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 515
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 516
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 517
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 520
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 521
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 522
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 525
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 526
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 527
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 528
    invoke-virtual {v1, v0, v11, v2, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 531
    sget v0, Lcom/zte/extres/R$id;->on:I

    .line 532
    sget v11, Lcom/zte/extres/R$id;->off:I

    .line 533
    const/4 v10, 0x0

    .line 534
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 536
    .local v3, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 537
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 538
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 539
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 542
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 543
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 544
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 547
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 548
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 549
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 552
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 553
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 554
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 557
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 558
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 559
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 562
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 563
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 564
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 567
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 568
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 569
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 572
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 573
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 574
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 577
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 578
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 579
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 581
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 582
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 583
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 584
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 587
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 588
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 589
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 591
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 592
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 593
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 594
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 596
    invoke-virtual {v1, v0, v11, v3, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 598
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 643
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 644
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
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 202
    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mColor:I

    if-ne v0, p1, :cond_0

    .line 203
    const-string v0, "SwitchZTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do nothing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 207
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mColor:I

    .line 208
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    goto :goto_0

    .line 211
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(I)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbTextPadding(I)V

    .line 217
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setSwitchPadding(I)V

    .line 218
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public SetOnActionBar(Z)V
    .locals 1
    .param p1, "onActionBar"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 196
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 199
    :cond_0
    return-void
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 133
    const/4 v2, 0x0

    goto :goto_0
.end method
