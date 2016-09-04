.class public Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolBarActionBarWidgetWrapper.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolBarActionBarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Z)V
    .locals 1
    .param p1, "ToolBarActionBar"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    .param p2, "style"    # Z

    .prologue
    .line 91
    sget v0, Lcom/zte/extres/R$string;->action_bar_up_description:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;ZI)V
    .locals 20
    .param p1, "ToolBarActionBar"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavigationMode:I

    .line 87
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitleSet:Z

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/zte/extres/R$styleable;->ActionBar:[I

    const v18, 0x10102ce

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_homeAsUpIndicator:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_d

    .line 106
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 107
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 112
    .local v11, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 117
    .local v8, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_2
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 122
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_displayOptions:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_customNavigationLayout:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 132
    .local v5, "customNavId":I
    if-eqz v5, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_5
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_height:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 139
    .local v6, "height":I
    if-lez v6, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 141
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15, v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_contentInsetStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 147
    .local v4, "contentInsetStart":I
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_contentInsetEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 149
    .local v3, "contentInsetEnd":I
    if-gez v4, :cond_7

    if-ltz v3, :cond_8

    .line 150
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_titleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 155
    .local v14, "titleTextStyle":I
    if-eqz v14, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_subtitleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 161
    .local v12, "subtitleTextStyle":I
    if-eqz v12, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    sget v15, Lcom/zte/extres/R$styleable;->ActionBar_android_popupTheme:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 166
    .local v10, "popupTheme":I
    if-eqz v10, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15, v10}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setPopupTheme(I)V

    .line 172
    .end local v3    # "contentInsetEnd":I
    .end local v4    # "contentInsetStart":I
    .end local v5    # "customNavId":I
    .end local v6    # "height":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v10    # "popupTheme":I
    .end local v11    # "subtitle":Ljava/lang/CharSequence;
    .end local v12    # "subtitleTextStyle":I
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v15}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    new-instance v16, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V

    invoke-virtual/range {v15 .. v16}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void

    .line 100
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 170
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->detectDisplayOptions()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0xb

    .line 205
    .local v0, "opts":I
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    or-int/lit8 v0, v0, 0x4

    .line 207
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 506
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102d7

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 508
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(III)V

    .line 510
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 263
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationContentDescription(I)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :goto_1
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolBarActionBarLogo()V
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 342
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 559
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 560
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 563
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->collapseActionView()V

    .line 235
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->dismissPopupMenus()V

    .line 394
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "ToolBarActionBarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "ToolBarActionBarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "ToolBarActionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 656
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "ToolBarActionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 651
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setCollapsible(Z)V

    .line 452
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 546
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 547
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;)V

    .line 550
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 193
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 197
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 614
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 615
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateNavigationIcon()V

    .line 617
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 403
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    .line 404
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 405
    .local v0, "changed":I
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    .line 406
    if-eqz v0, :cond_4

    .line 407
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 408
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateHomeAccessibility()V

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateNavigationIcon()V

    .line 414
    :cond_1
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateToolBarActionBarLogo()V

    .line 418
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 419
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 420
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 428
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 429
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 430
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;)V

    .line 436
    :cond_4
    :goto_1
    return-void

    .line 423
    :cond_5
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    :cond_6
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->ensureSpinner()V

    .line 518
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 519
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 520
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 457
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 325
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateToolBarActionBarLogo()V

    .line 326
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 330
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 336
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateToolBarActionBarLogo()V

    .line 337
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 388
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    check-cast p1, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    .line 389
    return-void
.end method

.method public setMenuCallbacks(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setMenuCallbacks(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 683
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mMenuPrepared:Z

    .line 379
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 635
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 636
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 630
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateHomeAccessibility()V

    .line 631
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 608
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 609
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 603
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->updateNavigationIcon()V

    .line 604
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 466
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavigationMode:I

    .line 467
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 468
    packed-switch v1, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mNavigationMode:I

    .line 483
    packed-switch p1, :pswitch_data_1

    .line 500
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :pswitch_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    if-ne v2, v3, :cond_0

    .line 471
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    if-ne v2, v3, :cond_0

    .line 476
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 487
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->ensureSpinner()V

    .line 488
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;I)V

    .line 503
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 491
    :pswitch_4
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;I)V

    .line 493
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 494
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iput v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->width:I

    .line 495
    iput v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->height:I

    .line 496
    const v2, 0x800053

    iput v2, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 483
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 694
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 276
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitleSet:Z

    .line 258
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setVisibility(I)V

    .line 672
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 240
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 568
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 570
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 571
    new-instance v1, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    .line 586
    :cond_0
    if-nez p1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 588
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 589
    new-instance v1, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$3;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 597
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 587
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
