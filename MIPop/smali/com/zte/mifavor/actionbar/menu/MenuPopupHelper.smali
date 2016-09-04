.class public Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuHelper;


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 61
    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 67
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x800003

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 312
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper$1;-><init>(Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 73
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 75
    iput-object p3, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 76
    iput-boolean p4, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 77
    iput p5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 78
    iput p6, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 79
    return-void
.end method

.method private createPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;
    .locals 11

    .prologue
    .line 212
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 214
    .local v10, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 215
    .local v7, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 216
    .local v8, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 218
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 223
    .local v9, "smallestWidth":I
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v6, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;IIZ)V

    .line 228
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/MenuPopup;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->addMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 229
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 232
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 234
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 235
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setGravity(I)V

    .line 237
    return-object v0
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->getPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    move-result-object v4

    .line 242
    .local v4, "popup":Lcom/zte/mifavor/actionbar/menu/MenuPopup;
    invoke-virtual {v4, p4}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setShowTitle(Z)V

    .line 244
    if-eqz p3, :cond_1

    .line 248
    iget v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v3, v5, 0x7

    .line 250
    .local v3, "hgrav":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr p1, v5

    .line 254
    :cond_0
    invoke-virtual {v4, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 255
    invoke-virtual {v4, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setVerticalOffset(I)V

    .line 261
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 262
    .local v0, "density":F
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 263
    .local v2, "halfSize":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    sub-int v6, p2, v2

    add-int v7, p1, v2

    add-int v8, p2, v2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v4, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 268
    .end local v0    # "density":F
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    .end local v2    # "halfSize":I
    .end local v3    # "hgrav":I
    :cond_1
    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->dismiss()V

    .line 279
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->createPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    .line 292
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 295
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 94
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 107
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 121
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 83
    return-void
.end method

.method public setPresenterCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .line 304
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 307
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method
