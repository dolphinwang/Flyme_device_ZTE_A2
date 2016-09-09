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
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 216
    .local v8, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 217
    .local v9, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/NinePatchDrawable;

    .line 218
    .local v10, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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

    .line 225
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 226
    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 227
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v6, v14, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    const/high16 v14, -0x22000000

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 229
    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 230
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 232
    const/16 v14, 0x1a

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 233
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v6, v14, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 234
    const/high16 v14, -0x22000000

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 235
    const/16 v14, 0x1a

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 236
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v6, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 238
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 241
    .local v3, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 242
    .local v7, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 243
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 244
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 248
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 249
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 250
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 253
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 254
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 255
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v15, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 258
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 259
    const/16 v14, 0x7d

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 260
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 261
    sget-object v14, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v7, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 263
    sget v2, Lcom/zte/extres/R$id;->off:I

    .line 264
    .local v2, "fromId":I
    sget v13, Lcom/zte/extres/R$id;->on:I

    .line 265
    .local v13, "toId":I
    const/4 v12, 0x0

    .line 266
    .local v12, "reversible":Z
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 268
    .local v4, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 269
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 270
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 271
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002_2:I

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

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 276
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 279
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 280
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 281
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 284
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 285
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 286
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 289
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 290
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 291
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 294
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 295
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 296
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 299
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 300
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 301
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 304
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 305
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 306
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 309
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 310
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 311
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 314
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 315
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 316
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 319
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 320
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 321
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 324
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 325
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 326
    const/16 v14, 0xf

    invoke-virtual {v4, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 327
    invoke-virtual {v3, v2, v13, v4, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 330
    sget v2, Lcom/zte/extres/R$id;->on:I

    .line 331
    sget v13, Lcom/zte/extres/R$id;->off:I

    .line 332
    const/4 v12, 0x0

    .line 333
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 335
    .local v5, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 336
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 337
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 338
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 341
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 342
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 343
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 346
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 347
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 348
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 351
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 352
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 353
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 356
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 357
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 358
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 361
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 362
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 363
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 366
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 367
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 368
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 371
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 372
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 373
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 376
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 377
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 378
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 381
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 382
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 383
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 386
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 387
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 388
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012_2:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 391
    .restart local v7    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 392
    const v14, -0xe0e0f

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 393
    const/16 v14, 0xf

    invoke-virtual {v5, v7, v14}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 395
    invoke-virtual {v3, v2, v13, v5, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method private SetColorForAndroid4x(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 590
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 592
    .local v1, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 594
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_1

    .line 595
    :cond_0
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 597
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mEN_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 602
    .local v3, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 603
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_bg_off:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 605
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->storeColor:I

    if-eq v4, p1, :cond_3

    .line 606
    :cond_2
    sget v4, Lcom/zte/extres/R$drawable;->switch_bg_on:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/zte/mifavor/widget/SwitchZTE;->ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 608
    :cond_3
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->mDIS_CECDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 609
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 610
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 614
    .local v2, "mTempThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 616
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 618
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 620
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_thumb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 622
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    return-void
.end method

.method private SetColorForAndroid50(I)V
    .locals 14
    .param p1, "color"    # I

    .prologue
    .line 402
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 403
    .local v4, "mTempDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 404
    .local v6, "npdrawable1":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha2:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 405
    .local v7, "npdrawable2":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha3:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/NinePatchDrawable;

    .line 406
    .local v8, "npdrawable3":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->switch_track_mtrl_alpha4:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 408
    .local v9, "npdrawable4":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 409
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 410
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 411
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 413
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 414
    const/16 v12, 0x4c

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 415
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v4, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 416
    const/high16 v12, -0x22000000

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 417
    const/16 v12, 0x4c

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 418
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 419
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 420
    const/16 v12, 0x1a

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 421
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v4, v12, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 422
    const/high16 v12, -0x22000000

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 423
    const/16 v12, 0x1a

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 424
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v4, v12, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 426
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 429
    .local v1, "mAnimatedStateListDrawable":Landroid/graphics/drawable/AnimatedStateListDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 430
    .local v5, "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 431
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 432
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 436
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 437
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 438
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 440
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 441
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 442
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 443
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v13, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_disable:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 446
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 447
    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 448
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 449
    sget-object v12, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v5, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 451
    sget v0, Lcom/zte/extres/R$id;->off:I

    .line 452
    .local v0, "fromId":I
    sget v11, Lcom/zte/extres/R$id;->on:I

    .line 453
    .local v11, "toId":I
    const/4 v10, 0x0

    .line 454
    .local v10, "reversible":Z
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 456
    .local v2, "mAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 457
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 458
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 459
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00002:I

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
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 467
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 468
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 469
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 472
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 473
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 474
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 477
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 478
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 479
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 482
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 483
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 484
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 487
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 488
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 489
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 492
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 493
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 494
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 497
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 498
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 499
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 502
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 503
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 504
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 507
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 508
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 509
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_on_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 512
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 514
    const/16 v12, 0xf

    invoke-virtual {v2, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 515
    invoke-virtual {v1, v0, v11, v2, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 518
    sget v0, Lcom/zte/extres/R$id;->on:I

    .line 519
    sget v11, Lcom/zte/extres/R$id;->off:I

    .line 520
    const/4 v10, 0x0

    .line 521
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 523
    .local v3, "mAnimationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00001:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 524
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 525
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 526
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00002:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 529
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 530
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 531
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 533
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00003:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 534
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 535
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 536
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 539
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 540
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 541
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00005:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 544
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 545
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 546
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 548
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00006:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 549
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 550
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 551
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00007:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 554
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 555
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 556
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00008:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 559
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 560
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 561
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00009:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 564
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 565
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 566
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00010:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 569
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 570
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 571
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00011:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 574
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 575
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 576
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_switch_to_off_mtrl_00012:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 579
    .restart local v5    # "npdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 580
    const v12, -0xe0e0f

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 581
    const/16 v12, 0xf

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 583
    invoke-virtual {v1, v0, v11, v3, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 585
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    return-void
.end method


# virtual methods
.method public ChangeColorDrawable(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 630
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 631
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
