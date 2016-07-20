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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 190
    return-void
.end method

.method private SetColorForActionBar()V
    .locals 17

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "color_ccd"

    sget v16, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 216
    .local v1, "color":I
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 217
    .local v6, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 218
    .local v8, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 219
    .local v9, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/NinePatchDrawable;

    .line 220
    .local v10, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/NinePatchDrawable;

    .line 222
    .local v11, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 223
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 224
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 225
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 228
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v14, :cond_0

    .line 230
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 231
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 232
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 233
    const/4 v14, -0x1

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 234
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 235
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 237
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 238
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    const/4 v14, -0x1

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 240
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 241
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 259
    :goto_0
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 262
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 263
    .local v7, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 264
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 265
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 269
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 270
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 271
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 274
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 275
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 276
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 279
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 280
    const/16 v14, 0x7d

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 281
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 282
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 284
    sget v2, Lcom/zte/extres/R$id;->off:I

    .line 285
    .local v2, "fromId":I
    sget v13, Lcom/zte/extres/R$id;->on:I

    .line 286
    .local v13, "toId":I
    const/4 v12, 0x0

    .line 287
    .local v12, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 289
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 290
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 291
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 292
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 295
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 296
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 297
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 300
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 301
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 302
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 305
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 306
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 307
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 310
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 311
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 312
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 315
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 316
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 317
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 320
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 321
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 322
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 325
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 326
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 327
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 330
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 331
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 332
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 335
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 336
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 337
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 340
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 341
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 342
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 345
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 346
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 347
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 348
    invoke-virtual {v3, v2, v13, v4, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 351
    sget v2, Lcom/zte/extres/R$id;->on:I

    .line 352
    sget v13, Lcom/zte/extres/R$id;->off:I

    .line 353
    const/4 v12, 0x0

    .line 354
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 356
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 357
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 358
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 359
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 362
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 363
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 364
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 367
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 368
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 369
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 372
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 373
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 374
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 377
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 378
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 379
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 382
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 383
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 384
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 387
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 388
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 389
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 392
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 393
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 394
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 397
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 398
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 399
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 402
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 403
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 404
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 407
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 408
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 409
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 412
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 413
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 414
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 416
    invoke-virtual {v3, v2, v13, v5, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 418
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    return-void

    .line 245
    .end local v2    # "fromId":I
    .end local v3    # "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    .end local v4    # "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v5    # "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .end local v12    # "reversible":Z
    .end local v13    # "toId":I
    :cond_0
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 246
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 247
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 248
    const/high16 v14, -0x22000000

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 249
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 250
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 252
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 253
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 254
    const/high16 v14, -0x22000000

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 255
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 256
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private SetColorForAndroid4x(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 611
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 613
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 615
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_1

    .line 616
    :cond_0
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 618
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 623
    .local v3, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 624
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 626
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_3

    .line 627
    :cond_2
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 629
    :cond_3
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 631
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 632
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 635
    .local v2, "mTempThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 637
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 639
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 641
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 643
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 423
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 424
    .local v4, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 425
    .local v6, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 426
    .local v7, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 427
    .local v8, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 429
    .local v9, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 430
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 431
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 432
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 434
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 435
    const/16 v12, 0x4c

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 436
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v4, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 437
    const/high16 v12, -0x22000000

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 438
    const/16 v12, 0x4c

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 439
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 440
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 441
    const/16 v12, 0x1a

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 442
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v4, v12, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 443
    const/high16 v12, -0x22000000

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 444
    const/16 v12, 0x1a

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 445
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 447
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 450
    .local v1, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 451
    .local v5, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 452
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 453
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 457
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 458
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 459
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 462
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 463
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 464
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 467
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 468
    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 469
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 470
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 472
    sget v0, Lcom/zte/extres/R$id;->off:I

    .line 473
    .local v0, "fromId":I
    sget v11, Lcom/zte/extres/R$id;->on:I

    .line 474
    .local v11, "toId":I
    const/4 v10, 0x0

    .line 475
    .local v10, "reversible":Z
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 477
    .local v2, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 478
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 479
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 480
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 483
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 484
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 485
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 488
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 489
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 490
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 493
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 494
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 495
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 498
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 499
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 500
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 503
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 504
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 505
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 508
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 509
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 510
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 513
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 514
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 515
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 518
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 519
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 520
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 523
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 524
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 525
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 528
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 529
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 530
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 533
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 534
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 535
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 536
    invoke-virtual {v1, v0, v11, v2, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 539
    sget v0, Lcom/zte/extres/R$id;->on:I

    .line 540
    sget v11, Lcom/zte/extres/R$id;->off:I

    .line 541
    const/4 v10, 0x0

    .line 542
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 544
    .local v3, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 545
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 546
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 547
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 549
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 550
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 551
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 552
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 554
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 555
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 556
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 557
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 560
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 561
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 562
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 565
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 566
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 567
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 570
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 571
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 572
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 574
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 575
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 576
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 577
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 580
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 581
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 582
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 585
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 586
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 587
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 590
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 591
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 592
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 595
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 596
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 597
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 600
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 601
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 602
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 604
    invoke-virtual {v1, v0, v11, v3, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 606
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 652
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
    .line 199
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(I)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbTextPadding(I)V

    .line 207
    iget-object v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setSwitchPadding(I)V

    .line 208
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid4x(I)V

    goto :goto_0
.end method

.method public SetOnActionBar(Z)V
    .locals 1
    .param p1, "onActionBar"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 193
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForActionBar()V

    .line 196
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
