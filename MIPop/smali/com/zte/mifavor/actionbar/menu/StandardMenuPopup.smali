.class final Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;
.super Lcom/zte/mifavor/actionbar/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field private mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;-><init>()V

    .line 59
    new-instance v2, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;-><init>(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)V

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 77
    new-instance v2, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;-><init>(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)V

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 115
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 117
    iput-boolean p6, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    iget-boolean v3, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v2, p2, v0, v3}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;-><init>(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    .line 120
    iput p4, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 121
    iput p5, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/zte/extres/R$dimen;->config_prefDialogWidth:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 127
    iput-object p3, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 129
    new-instance v2, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    .line 132
    invoke-virtual {p2, p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private tryShow()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v5

    .line 150
    :cond_1
    iget-boolean v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v7, :cond_3

    :cond_2
    move v5, v6

    .line 151
    goto :goto_0

    .line 154
    :cond_3
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 156
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7, p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 157
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7, p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    iget-object v8, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7, v5}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setModal(Z)V

    .line 161
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 162
    .local v1, "anchor":Landroid/view/View;
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_7

    move v0, v5

    .line 163
    .local v0, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 164
    if-eqz v0, :cond_4

    .line 165
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v8, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    :cond_4
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 168
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 169
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    iget v8, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setDropDownGravity(I)V

    .line 171
    iget-boolean v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v7, :cond_5

    .line 172
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    iget-object v8, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v7, v10, v8, v9}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContentWidth:I

    .line 173
    iput-boolean v5, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 176
    :cond_5
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    iget v8, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setContentWidth(I)V

    .line 177
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setInputMethodMode(I)V

    .line 178
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 179
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->show()V

    .line 181
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v7}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 182
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    iget-boolean v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 185
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$layout;->popup_menu_header_item_layout:I

    invoke-virtual {v7, v8, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 190
    .local v3, "titleItemView":Landroid/widget/FrameLayout;
    sget v7, Lcom/zte/extres/R$id;->title:I

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 193
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_6
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 196
    invoke-virtual {v2, v3, v10, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 199
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->show()V

    goto/16 :goto_0

    .end local v0    # "addGlobalListener":Z
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_7
    move v0, v6

    .line 162
    goto/16 :goto_1
.end method


# virtual methods
.method public addMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 221
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->dismiss()V

    .line 216
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->dismiss()V

    .line 293
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 231
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close()V

    .line 233
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 240
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 243
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 319
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->dismiss()V

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 310
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z
    .locals 10
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    const/4 v9, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v5, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 264
    .local v0, "subPopup":Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->setPresenterCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 265
    invoke-static {p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 268
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 272
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, v9}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close(Z)V

    .line 275
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->getHorizontalOffset()I

    move-result v7

    .line 276
    .local v7, "horizontalOffset":I
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->getVerticalOffset()I

    move-result v8

    .line 277
    .local v8, "verticalOffset":I
    invoke-virtual {v0, v7, v8}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z

    .line 281
    :cond_0
    const/4 v1, 0x1

    .line 284
    .end local v0    # "subPopup":Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
    .end local v7    # "horizontalOffset":I
    .end local v8    # "verticalOffset":I
    :goto_0
    return v1

    :cond_1
    move v1, v9

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 315
    return-void
.end method

.method public setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .line 257
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 138
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 143
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 340
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 329
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShowTitle:Z

    .line 350
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->setVerticalOffset(I)V

    .line 345
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 249
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mAdapter:Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 252
    :cond_0
    return-void
.end method
