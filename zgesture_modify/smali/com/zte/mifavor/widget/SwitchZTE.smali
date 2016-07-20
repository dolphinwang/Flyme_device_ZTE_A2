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

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_UNCHECKED:[I

    .line 120
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_CHECKED:[I

    return-void

    .line 104
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 110
    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    .line 113
    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    .line 117
    :array_4
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 120
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
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    sget v0, Lcom/zte/extres/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 170
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOn(Ljava/lang/CharSequence;)V

    .line 171
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOff(Ljava/lang/CharSequence;)V

    .line 172
    iput-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_ccl"

    sget v4, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "color":I
    :goto_0
    sget-object v2, Lcom/zte/extres/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/zte/extres/R$styleable;->Switch_android_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColor(I)V

    .line 187
    return-void

    .line 178
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

.method private SetColorForActionBar()V
    .locals 17

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "color_ccd"

    sget v16, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, "color":I
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 215
    .local v6, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 216
    .local v8, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 217
    .local v9, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/NinePatchDrawable;

    .line 218
    .local v10, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/NinePatchDrawable;

    .line 220
    .local v11, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 221
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 222
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 223
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v14, :cond_0

    .line 228
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 229
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 230
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 231
    const/4 v14, -0x1

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 232
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 233
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 235
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 236
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    const/4 v14, -0x1

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 238
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 239
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 257
    :goto_0
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 260
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 261
    .local v7, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 262
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 263
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 267
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 269
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 272
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 273
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 274
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 277
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 278
    const/16 v14, 0x7d

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 279
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 280
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 282
    sget v2, Lcom/zte/extres/R$id;->off:I

    .line 283
    .local v2, "fromId":I
    sget v13, Lcom/zte/extres/R$id;->on:I

    .line 284
    .local v13, "toId":I
    const/4 v12, 0x0

    .line 285
    .local v12, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 287
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 288
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 289
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 290
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 293
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 294
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 295
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 298
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 299
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 300
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 303
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 304
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 305
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 308
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 309
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 310
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 313
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 314
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 315
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 318
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 319
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 320
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 323
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 324
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 325
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 328
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 329
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 330
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 333
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 334
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 335
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 338
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 339
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 340
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 343
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 344
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 345
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 346
    invoke-virtual {v3, v2, v13, v4, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 349
    sget v2, Lcom/zte/extres/R$id;->on:I

    .line 350
    sget v13, Lcom/zte/extres/R$id;->off:I

    .line 351
    const/4 v12, 0x0

    .line 352
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 354
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 355
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 356
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 357
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 360
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 361
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 362
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 365
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 366
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 367
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 370
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 371
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 372
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 375
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 376
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 377
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 380
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 381
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 382
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 385
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 386
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 387
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 390
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 391
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 392
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 395
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 396
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 397
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 400
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 401
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 402
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 405
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 406
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 407
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 410
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 411
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 412
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 414
    invoke-virtual {v3, v2, v13, v5, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 416
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    return-void

    .line 243
    .end local v2    # "fromId":I
    .end local v3    # "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    .end local v4    # "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v5    # "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .end local v12    # "reversible":Z
    .end local v13    # "toId":I
    :cond_0
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 244
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 245
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 246
    const/high16 v14, -0x22000000

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 247
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 248
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 250
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 251
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 252
    const/high16 v14, -0x22000000

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 253
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 254
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private SetColorForAndroid4x(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 609
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 611
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 613
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_1

    .line 614
    :cond_0
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 616
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 621
    .local v3, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 622
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 624
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_3

    .line 625
    :cond_2
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 627
    :cond_3
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 628
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 629
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 633
    .local v2, "mTempThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 635
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 637
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 639
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 641
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 421
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 422
    .local v4, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 423
    .local v6, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 424
    .local v7, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 425
    .local v8, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 427
    .local v9, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 428
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 429
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 430
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 432
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 433
    const/16 v12, 0x4c

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 434
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v4, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 435
    const/high16 v12, -0x22000000

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 436
    const/16 v12, 0x4c

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 437
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 438
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 439
    const/16 v12, 0x1a

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 440
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v4, v12, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 441
    const/high16 v12, -0x22000000

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 442
    const/16 v12, 0x1a

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 443
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 445
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 448
    .local v1, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 449
    .local v5, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 450
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 451
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 455
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 456
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 457
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 460
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 461
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 462
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 465
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 466
    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 467
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 468
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 470
    sget v0, Lcom/zte/extres/R$id;->off:I

    .line 471
    .local v0, "fromId":I
    sget v11, Lcom/zte/extres/R$id;->on:I

    .line 472
    .local v11, "toId":I
    const/4 v10, 0x0

    .line 473
    .local v10, "reversible":Z
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 475
    .local v2, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 476
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 477
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 478
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 481
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 482
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 483
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 485
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 486
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 487
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 488
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 491
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 492
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 493
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 496
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 497
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 498
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 501
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 502
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 503
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 506
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 507
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 508
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 511
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 512
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 513
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 516
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 517
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 518
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 521
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 522
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 523
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 526
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 527
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 528
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 531
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 532
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 533
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 534
    invoke-virtual {v1, v0, v11, v2, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 537
    sget v0, Lcom/zte/extres/R$id;->on:I

    .line 538
    sget v11, Lcom/zte/extres/R$id;->off:I

    .line 539
    const/4 v10, 0x0

    .line 540
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 542
    .local v3, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 543
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 544
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 545
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 548
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 549
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 550
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 553
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 554
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 555
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 558
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 559
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 560
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 563
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 564
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 565
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 568
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 569
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 570
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 573
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 574
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 575
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 578
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 579
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 580
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 583
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 584
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 585
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 588
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 589
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 590
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 592
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 593
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 594
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 595
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 597
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 598
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 599
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 600
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 602
    invoke-virtual {v1, v0, v11, v3, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 604
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 649
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 650
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
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 201
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(I)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbTextPadding(I)V

    .line 205
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setSwitchPadding(I)V

    .line 206
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public SetOnActionBar(Z)V
    .locals 1
    .param p1, "onActionBar"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 191
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 194
    :cond_0
    return-void
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 131
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 131
    const/4 v2, 0x0

    goto :goto_0
.end method
