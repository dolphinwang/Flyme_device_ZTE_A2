.class public Lcom/android/mipop/cropimage/CropRect;
.super Lcom/android/mipop/cropimage/CropBase;
.source "CropRect.java"


# static fields
.field private static final INBOTTOMBOUNDS:I = 0x3e8

.field private static final INCLIPRECT:I = 0x2

.field private static final INLEFTBOTTOM:I = 0x3e9

.field private static final INLEFTBOUNDS:I = 0x1

.field private static final INLEFTTOP:I = 0xb

.field private static final INRIGHTBOTTOM:I = 0x44c

.field private static final INRIGHTBOUNDS:I = 0x64

.field private static final INRIGHTTOP:I = 0x6e

.field private static final INTOPBOUNDS:I = 0xa

.field private static final OUTCLIPRECT:I = 0x3


# instance fields
.field private preX:I

.field private preY:I

.field private tempX:I

.field private tempY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/CropBase;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private changeBottom()V
    .locals 6

    .prologue
    .line 79
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 80
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 81
    .local v0, "bottom":I
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->preY:I

    sub-int v1, v3, v4

    .line 82
    .local v1, "dy":I
    add-int v3, v0, v1

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->vHeight:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->vHeight:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    add-int/2addr v3, v4

    sub-int v1, v3, v0

    .line 83
    :cond_0
    add-int v3, v0, v1

    if-ge v3, v2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v0, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 86
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 87
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit16 v3, v3, -0x3e8

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 88
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v0, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private changeLeft()V
    .locals 5

    .prologue
    .line 43
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 44
    .local v1, "left":I
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 45
    .local v2, "right":I
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->preX:I

    sub-int v0, v3, v4

    .line 46
    .local v0, "dx":I
    add-int v3, v1, v0

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    sub-int v0, v3, v1

    .line 47
    :cond_0
    add-int v3, v1, v0

    if-le v3, v2, :cond_1

    .line 49
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v1, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 51
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 52
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v1, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private changePosition()V
    .locals 7

    .prologue
    .line 115
    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->preX:I

    sub-int v0, v2, v3

    .line 116
    .local v0, "dx":I
    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->preY:I

    sub-int v1, v2, v3

    .line 117
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->vWidth:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->vWidth:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->vHeight:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->vHeight:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private changeRight()V
    .locals 6

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 98
    .local v1, "left":I
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 99
    .local v2, "right":I
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->preX:I

    sub-int v0, v3, v4

    .line 100
    .local v0, "dx":I
    add-int v3, v2, v0

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->vWidth:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->vWidth:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    add-int/2addr v3, v4

    sub-int v0, v3, v2

    .line 101
    :cond_0
    add-int v3, v2, v0

    if-ge v3, v1, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v2, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 104
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 105
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, -0x64

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 106
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v2, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private changeTop()V
    .locals 5

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 62
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 63
    .local v0, "bottom":I
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->preY:I

    sub-int v1, v3, v4

    .line 64
    .local v1, "dy":I
    add-int v3, v2, v1

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    sub-int v1, v3, v2

    .line 65
    :cond_0
    add-int v3, v2, v1

    if-le v3, v0, :cond_1

    .line 67
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 68
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v2, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 69
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit8 v3, v3, -0xa

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 70
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    add-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    add-int v4, v2, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private computeTouchPoistion(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x3

    .line 145
    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v5

    .line 149
    :cond_1
    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 150
    .local v1, "left":I
    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 151
    .local v2, "right":I
    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 152
    .local v4, "top":I
    iget-object v6, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 153
    .local v0, "bottom":I
    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->IconWidth:I

    .line 154
    .local v3, "tolerence":I
    sub-int v6, v1, v3

    if-lt p1, v6, :cond_2

    add-int v6, v1, v3

    if-gt p1, v6, :cond_2

    add-int v6, v4, v3

    if-gt p2, v6, :cond_2

    sub-int v6, v4, v3

    if-lt p2, v6, :cond_2

    .line 156
    const/16 v5, 0xb

    goto :goto_0

    .line 157
    :cond_2
    sub-int v6, v2, v3

    if-lt p1, v6, :cond_3

    add-int v6, v2, v3

    if-gt p1, v6, :cond_3

    add-int v6, v4, v3

    if-gt p2, v6, :cond_3

    sub-int v6, v4, v3

    if-lt p2, v6, :cond_3

    .line 159
    const/16 v5, 0x6e

    goto :goto_0

    .line 160
    :cond_3
    sub-int v6, v2, v3

    if-lt p1, v6, :cond_4

    add-int v6, v2, v3

    if-gt p1, v6, :cond_4

    add-int v6, v0, v3

    if-gt p2, v6, :cond_4

    sub-int v6, v0, v3

    if-lt p2, v6, :cond_4

    .line 162
    const/16 v5, 0x44c

    goto :goto_0

    .line 163
    :cond_4
    sub-int v6, v1, v3

    if-lt p1, v6, :cond_5

    add-int v6, v1, v3

    if-gt p1, v6, :cond_5

    add-int v6, v0, v3

    if-gt p2, v6, :cond_5

    sub-int v6, v0, v3

    if-lt p2, v6, :cond_5

    .line 165
    const/16 v5, 0x3e9

    goto :goto_0

    .line 166
    :cond_5
    sub-int v6, v1, v3

    if-lt p1, v6, :cond_6

    add-int v6, v1, v3

    if-gt p1, v6, :cond_6

    add-int v6, v0, v3

    if-gt p2, v6, :cond_6

    sub-int v6, v4, v3

    if-lt p2, v6, :cond_6

    .line 168
    const/4 v5, 0x1

    goto :goto_0

    .line 169
    :cond_6
    sub-int v6, v1, v3

    if-lt p1, v6, :cond_7

    add-int v6, v2, v3

    if-gt p1, v6, :cond_7

    add-int v6, v4, v3

    if-ge p2, v6, :cond_7

    sub-int v6, v4, v3

    if-le p2, v6, :cond_7

    .line 171
    const/16 v5, 0xa

    goto/16 :goto_0

    .line 172
    :cond_7
    sub-int v6, v2, v3

    if-lt p1, v6, :cond_8

    add-int v6, v2, v3

    if-gt p1, v6, :cond_8

    add-int v6, v0, v3

    if-ge p2, v6, :cond_8

    sub-int v6, v4, v3

    if-le p2, v6, :cond_8

    .line 174
    const/16 v5, 0x64

    goto/16 :goto_0

    .line 175
    :cond_8
    sub-int v6, v1, v3

    if-lt p1, v6, :cond_9

    add-int v6, v2, v3

    if-gt p1, v6, :cond_9

    add-int v6, v0, v3

    if-ge p2, v6, :cond_9

    sub-int v6, v0, v3

    if-le p2, v6, :cond_9

    .line 177
    const/16 v5, 0x3e8

    goto/16 :goto_0

    .line 178
    :cond_9
    add-int v6, v1, v3

    if-lt p1, v6, :cond_0

    sub-int v6, v2, v3

    if-gt p1, v6, :cond_0

    sub-int v6, v0, v3

    if-ge p2, v6, :cond_0

    add-int v6, v4, v3

    if-le p2, v6, :cond_0

    .line 180
    const/4 v5, 0x2

    goto/16 :goto_0
.end method

.method private newRect()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 137
    return-void
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez v4, :cond_1

    .line 215
    .end local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 193
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 194
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 195
    .local v2, "top":I
    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 196
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 197
    .local v0, "height":I
    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    if-eqz v4, :cond_2

    .line 199
    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateX:I

    sub-int/2addr v1, v4

    .line 201
    :cond_2
    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    if-eqz v4, :cond_3

    .line 203
    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->translateY:I

    sub-int/2addr v2, v4

    .line 205
    :cond_3
    iget v4, p0, Lcom/android/mipop/cropimage/CropRect;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 207
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->scale:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 208
    int-to-float v4, v2

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->scale:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 209
    int-to-float v4, v3

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->scale:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 210
    add-int v4, v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v3, v4, v1

    .line 211
    :cond_4
    int-to-float v4, v0

    iget v5, p0, Lcom/android/mipop/cropimage/CropRect;->scale:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 212
    add-int v4, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v0, v4, v2

    .line 214
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    .line 215
    invoke-static {p1, v1, v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/CropBase;->draw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropRect;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropRect;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setPoints([Landroid/graphics/Point;)V
    .locals 5
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    array-length v0, p1

    if-ge v0, v3, :cond_0

    aget-object v0, p1, v4

    if-nez v0, :cond_0

    aget-object v0, p1, v3

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_2

    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 312
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_3

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 313
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_4

    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 314
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropRect;->clipRect:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_5

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_4
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 315
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropRect;->computCoverAndIconP()V

    goto :goto_0

    .line 311
    :cond_2
    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 312
    :cond_3
    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 313
    :cond_4
    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 314
    :cond_5
    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_4
.end method

.method public touchDown(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    .line 241
    iput p2, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    .line 243
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->preX:I

    .line 244
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->preY:I

    .line 245
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/cropimage/CropRect;->computeTouchPoistion(II)I

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    .line 247
    return-void
.end method

.method public touchMove(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    .line 251
    iput p2, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    .line 253
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->eventType:I

    sparse-switch v0, :sswitch_data_0

    .line 292
    :goto_0
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->tempX:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->preX:I

    .line 293
    iget v0, p0, Lcom/android/mipop/cropimage/CropRect;->tempY:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropRect;->preY:I

    .line 294
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropRect;->computCoverAndIconP()V

    .line 295
    return-void

    .line 255
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeLeft()V

    .line 256
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeTop()V

    goto :goto_0

    .line 259
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeRight()V

    .line 260
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeTop()V

    goto :goto_0

    .line 263
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeRight()V

    .line 264
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeBottom()V

    goto :goto_0

    .line 267
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeLeft()V

    .line 268
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeBottom()V

    goto :goto_0

    .line 271
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeLeft()V

    goto :goto_0

    .line 274
    :sswitch_5
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeTop()V

    goto :goto_0

    .line 277
    :sswitch_6
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeRight()V

    goto :goto_0

    .line 280
    :sswitch_7
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changeBottom()V

    goto :goto_0

    .line 283
    :sswitch_8
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->changePosition()V

    goto :goto_0

    .line 286
    :sswitch_9
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropRect;->newRect()V

    goto :goto_0

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0xa -> :sswitch_5
        0xb -> :sswitch_0
        0x64 -> :sswitch_6
        0x6e -> :sswitch_1
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_3
        0x44c -> :sswitch_2
    .end sparse-switch
.end method

.method public touchUp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 299
    return-void
.end method
