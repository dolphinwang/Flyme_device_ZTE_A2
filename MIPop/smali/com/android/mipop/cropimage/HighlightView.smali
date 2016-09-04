.class Lcom/android/mipop/cropimage/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field public mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field public mEdge:I

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ctx"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    sget-object v0, Lcom/android/mipop/cropimage/HighlightView$ModifyMode;->None:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mMode:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    .line 403
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    .line 407
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCircle:Z

    .line 415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 417
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 47
    iput-object p1, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 52
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 354
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 355
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0206c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f0206c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f0206f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 89
    .local v12, "path":Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/HighlightView;->hasFocus()Z

    move-result v23

    if-nez v23, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/high16 v24, -0x1000000

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v15, "viewDrawingRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    .line 97
    .local v16, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v8, v0

    .line 98
    .local v8, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v16, v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v8, v25

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v16, v25

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const v24, -0x10fb2a

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .end local v8    # "height":F
    .end local v16    # "width":F
    :goto_1
    sget-object v23, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/HighlightView;->hasFocus()Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 114
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 116
    .local v8, "height":I
    const-wide v24, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 118
    .local v7, "d":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    add-int v23, v23, v7

    div-int/lit8 v24, v16, 0x2

    sub-int v19, v23, v24

    .line 119
    .local v19, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v7

    div-int/lit8 v24, v8, 0x2

    sub-int v21, v23, v24

    .line 120
    .local v21, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    add-int v25, v25, v21

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 102
    .end local v7    # "d":I
    .end local v8    # "height":I
    .end local v16    # "width":I
    .end local v19    # "x":I
    .end local v21    # "y":I
    :cond_1
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, -0x7600

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 106
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_2

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int/lit8 v11, v23, 0x1

    .line 126
    .local v11, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    .line 127
    .local v13, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int/lit8 v14, v23, 0x4

    .line 128
    .local v14, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int/lit8 v6, v23, 0x3

    .line 130
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v18, v23, 0x2

    .line 131
    .local v18, "widthWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v17, v23, 0x2

    .line 132
    .local v17, "widthHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v9, v23, 0x2

    .line 133
    .local v9, "heightHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v10, v23, 0x2

    .line 135
    .local v10, "heightWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v20, v23, v24

    .line 136
    .local v20, "xMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 138
    .local v22, "yMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v11, v18

    sub-int v25, v22, v17

    add-int v26, v11, v18

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v13, v18

    sub-int v25, v22, v17

    add-int v26, v13, v18

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v14, v9

    add-int v26, v20, v10

    add-int v27, v14, v9

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v6, v9

    add-int v26, v20, v10

    add-int v27, v6, v9

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/cropimage/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 348
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 168
    .local v6, "r":Landroid/graphics/Rect;
    const/high16 v5, 0x41a00000    # 20.0f

    .line 169
    .local v5, "hysteresis":F
    const/4 v8, 0x1

    .line 171
    .local v8, "retval":I
    iget-boolean v10, p0, Lcom/android/mipop/cropimage/HighlightView;->mCircle:Z

    if-eqz v10, :cond_6

    .line 172
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 173
    .local v1, "distX":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 174
    .local v2, "distY":F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 175
    .local v3, "distanceFromCenter":I
    iget-object v10, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 176
    .local v7, "radius":I
    sub-int v0, v3, v7

    .line 177
    .local v0, "delta":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 178
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 179
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    .line 180
    const/16 v8, 0x8

    .line 221
    .end local v0    # "delta":I
    .end local v1    # "distX":F
    .end local v2    # "distY":F
    .end local v3    # "distanceFromCenter":I
    .end local v7    # "radius":I
    :cond_0
    :goto_0
    return v8

    .line 182
    .restart local v0    # "delta":I
    .restart local v1    # "distX":F
    .restart local v2    # "distY":F
    .restart local v3    # "distanceFromCenter":I
    .restart local v7    # "radius":I
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 185
    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_3

    .line 186
    const/4 v8, 0x2

    goto :goto_0

    .line 188
    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    .line 191
    :cond_4
    if-ge v3, v7, :cond_5

    .line 192
    const/16 v8, 0x20

    goto :goto_0

    .line 194
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "delta":I
    .end local v1    # "distX":F
    .end local v2    # "distY":F
    .end local v3    # "distanceFromCenter":I
    .end local v7    # "radius":I
    :cond_6
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_b

    const/4 v9, 0x1

    .line 200
    .local v9, "verticalCheck":Z
    :goto_1
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_c

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_c

    const/4 v4, 0x1

    .line 203
    .local v4, "horizCheck":Z
    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    if-eqz v9, :cond_7

    .line 204
    or-int/lit8 v8, v8, 0x2

    .line 206
    :cond_7
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    if-eqz v9, :cond_8

    .line 207
    or-int/lit8 v8, v8, 0x4

    .line 209
    :cond_8
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    if-eqz v4, :cond_9

    .line 210
    or-int/lit8 v8, v8, 0x8

    .line 212
    :cond_9
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    if-eqz v4, :cond_a

    .line 213
    or-int/lit8 v8, v8, 0x10

    .line 217
    :cond_a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    const/16 v8, 0x20

    goto/16 :goto_0

    .line 199
    .end local v4    # "horizCheck":Z
    .end local v9    # "verticalCheck":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 200
    .restart local v9    # "verticalCheck":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public growBy(FF)V
    .locals 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/high16 v1, 0x41c80000    # 25.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 272
    iget-boolean v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_0

    .line 273
    cmpl-float v4, p1, v8

    if-eqz v4, :cond_a

    .line 274
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 283
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 284
    .local v2, "r":Landroid/graphics/RectF;
    cmpl-float v4, p1, v8

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v9, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v9

    .line 286
    .local v0, "adjustment":F
    move p1, v0

    .line 287
    iget-boolean v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_1

    .line 288
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 291
    .end local v0    # "adjustment":F
    :cond_1
    cmpl-float v4, p2, v8

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v9, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 292
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v9

    .line 293
    .restart local v0    # "adjustment":F
    move p2, v0

    .line 294
    iget-boolean v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_2

    .line 295
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 302
    .end local v0    # "adjustment":F
    :cond_2
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mEdge:I

    and-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_3

    .line 303
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, p1

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p2

    iget-object v6, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    :cond_3
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mEdge:I

    and-int/lit8 v4, v4, 0x14

    if-eqz v4, :cond_4

    .line 306
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, p1

    iget-object v7, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, p2

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 311
    :cond_4
    const/high16 v3, 0x41c80000    # 25.0f

    .line 312
    .local v3, "widthCap":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    .line 313
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v2, v4, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 315
    :cond_5
    iget-boolean v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 316
    .local v1, "heightCap":F
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_7

    .line 317
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v2, v8, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 321
    :cond_7
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    .line 322
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 326
    :cond_8
    :goto_1
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c

    .line 327
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v8, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 332
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 333
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 334
    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 335
    return-void

    .line 275
    .end local v1    # "heightCap":F
    .end local v2    # "r":Landroid/graphics/RectF;
    .end local v3    # "widthCap":F
    :cond_a
    cmpl-float v4, p2, v8

    if-eqz v4, :cond_0

    .line 276
    iget v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_0

    .line 323
    .restart local v1    # "heightCap":F
    .restart local v2    # "r":Landroid/graphics/RectF;
    .restart local v3    # "widthCap":F
    :cond_b
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 324
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v8}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 328
    :cond_c
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 329
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v8, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method handleMotion(IFF)V
    .locals 7
    .param p1, "edge"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 227
    iput p1, p0, Lcom/android/mipop/cropimage/HighlightView;->mEdge:I

    .line 228
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 229
    .local v0, "r":Landroid/graphics/Rect;
    if-ne p1, v4, :cond_0

    .line 249
    :goto_0
    return-void

    .line 231
    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/android/mipop/cropimage/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 235
    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    .line 236
    const/4 p2, 0x0

    .line 239
    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    .line 240
    const/4 p3, 0x0

    .line 244
    :cond_3
    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 245
    .local v1, "xDelta":F
    iget-object v5, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 246
    .local v2, "yDelta":F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/android/mipop/cropimage/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 362
    return-void
.end method

.method moveBy(FF)V
    .locals 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 255
    .local v0, "invalRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 258
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 261
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 264
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 265
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 266
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 267
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 268
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/mipop/cropimage/HighlightView;->mIsFocused:Z

    .line 75
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/mipop/cropimage/HighlightView;->mHidden:Z

    .line 79
    return-void
.end method

.method public setMode(Lcom/android/mipop/cropimage/HighlightView$ModifyMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mMode:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/android/mipop/cropimage/HighlightView;->mMode:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    .line 161
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 163
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 4
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "imageRect"    # Landroid/graphics/Rect;
    .param p3, "cropRect"    # Landroid/graphics/RectF;
    .param p4, "circle"    # Z
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 366
    if-eqz p4, :cond_0

    .line 367
    const/4 p5, 0x1

    .line 369
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 371
    iput-object p3, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 372
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 373
    iput-boolean p5, p0, Lcom/android/mipop/cropimage/HighlightView;->mMaintainAspectRatio:Z

    .line 374
    iput-boolean p4, p0, Lcom/android/mipop/cropimage/HighlightView;->mCircle:Z

    .line 376
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mInitialAspectRatio:F

    .line 377
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 379
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 380
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 381
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    sget-object v0, Lcom/android/mipop/cropimage/HighlightView$ModifyMode;->None:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/android/mipop/cropimage/HighlightView;->mMode:Lcom/android/mipop/cropimage/HighlightView$ModifyMode;

    .line 386
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->init()V

    .line 387
    return-void
.end method

.method public updateHightView(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 338
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 339
    .local v0, "r":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 341
    invoke-direct {p0}, Lcom/android/mipop/cropimage/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 342
    iget-object v1, p0, Lcom/android/mipop/cropimage/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 344
    return-void
.end method
