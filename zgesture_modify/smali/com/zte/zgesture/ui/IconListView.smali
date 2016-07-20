.class public Lcom/zte/zgesture/ui/IconListView;
.super Landroid/widget/AbsoluteLayout;
.source "IconListView.java"


# instance fields
.field private curFocus:I

.field private iconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private scaleRate:D


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/ui/IconListView;->iconList:Ljava/util/ArrayList;

    .line 14
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    .line 21
    return-void
.end method


# virtual methods
.method public setIconList(Ljava/util/ArrayList;I)V
    .locals 18
    .param p2, "focus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "icList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/zgesture/ui/IconListView;->iconList:Ljava/util/ArrayList;

    .line 25
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/zgesture/ui/IconListView;->curFocus:I

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/ui/IconListView;->removeAllViews()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/ui/IconListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/ui/IconListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .local v5, "height":I
    mul-int/lit8 v11, v5, 0x5

    div-int/lit8 v8, v11, 0xc

    .line 32
    .local v8, "itemSize":I
    mul-int/lit8 v11, v8, 0x5

    sub-int v11, v10, v11

    int-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    mul-double/2addr v12, v14

    double-to-int v12, v12

    sub-int/2addr v11, v12

    div-int/lit8 v4, v11, 0x6

    .line 34
    .local v4, "gap":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/zgesture/ui/IconListView;->iconList:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 35
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/zgesture/ui/IconListView;->iconList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 37
    .local v2, "count":I
    const/4 v3, 0x0

    .line 38
    .local v3, "curIndex":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/zte/zgesture/ui/IconListView;->curFocus:I

    add-int/lit8 v6, v11, -0x3

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/zte/zgesture/ui/IconListView;->curFocus:I

    add-int/lit8 v11, v11, 0x3

    if-gt v6, v11, :cond_3

    .line 39
    const/4 v7, 0x0

    .line 40
    .local v7, "icon":Landroid/widget/ImageView;
    if-ltz v6, :cond_0

    if-ge v6, v2, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/zgesture/ui/IconListView;->iconList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "icon":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 46
    .restart local v7    # "icon":Landroid/widget/ImageView;
    :goto_1
    const/4 v9, 0x0

    .line 47
    .local v9, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/zte/zgesture/ui/IconListView;->curFocus:I

    if-ge v6, v11, :cond_1

    .line 48
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    mul-int v11, v3, v8

    div-int/lit8 v12, v8, 0x2

    sub-int/2addr v11, v12

    mul-int v12, v3, v4

    add-int/2addr v11, v12

    sub-int v12, v5, v8

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v9, v8, v8, v11, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 58
    .restart local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/zte/zgesture/ui/IconListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    new-instance v7, Landroid/widget/ImageView;

    .end local v7    # "icon":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/zgesture/ui/IconListView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7    # "icon":Landroid/widget/ImageView;
    goto :goto_1

    .line 50
    .restart local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/zte/zgesture/ui/IconListView;->curFocus:I

    if-ne v6, v11, :cond_2

    .line 51
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    int-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    mul-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v14, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v13, v14

    sub-int v13, v10, v13

    div-int/lit8 v13, v13, 0x2

    int-to-double v14, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/zgesture/ui/IconListView;->scaleRate:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    sub-int v14, v5, v14

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_2

    .line 55
    :cond_2
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    mul-int v11, v3, v8

    mul-int v12, v3, v4

    add-int/2addr v11, v12

    sub-int v12, v5, v8

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v9, v8, v8, v11, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_2

    .line 61
    .end local v2    # "count":I
    .end local v3    # "curIndex":I
    .end local v6    # "i":I
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v9    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_3
    return-void
.end method
