.class public Lcom/zte/zgesture/ui/AutoDrawView;
.super Landroid/view/SurfaceView;
.source "AutoDrawView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BASE_HEIGHT:F = 960.0f

.field private static final BASE_WIDTH:F = 960.0f

.field private static final DRAW_DELAY:I = 0x3e8

.field private static final DRAW_INTERVAL:I = 0x7d0

.field private static final FRAME_INTERVAL:I = 0xa

.field public static final SHAPE_C:I = 0x1

.field public static final SHAPE_E:I = 0x7

.field public static final SHAPE_M:I = 0x2

.field public static final SHAPE_O:I = 0x8

.field public static final SHAPE_S:I = 0x5

.field public static final SHAPE_UP:I = 0x9

.field public static final SHAPE_V:I = 0x6

.field public static final SHAPE_W:I = 0x3

.field public static final SHAPE_Z:I = 0x4


# instance fields
.field private mCurrentFrame:I

.field private mDrawFrameRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPoCount:I

.field private mPointC:[Landroid/graphics/Point;

.field private mPointE:[Landroid/graphics/Point;

.field private mPointList:[Landroid/graphics/Point;

.field private mPointM:[Landroid/graphics/Point;

.field private mPointO:[Landroid/graphics/Point;

.field private mPointS:[Landroid/graphics/Point;

.field private mPointUp:[Landroid/graphics/Point;

.field private mPointV:[Landroid/graphics/Point;

.field private mPointW:[Landroid/graphics/Point;

.field private mPointZ:[Landroid/graphics/Point;

.field private mRedrawRunnable:Ljava/lang/Runnable;

.field private mStartDrawRunnable:Ljava/lang/Runnable;

.field mXFactor:F

.field mYFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v5, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    .line 55
    const/16 v0, 0x31

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2c7

    const/16 v3, 0x152

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b9

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x13a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29d

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x123

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27c

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x268

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x238

    const/16 v4, 0xfc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0xf8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x205

    const/16 v4, 0xf9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0xfd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ce

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b4

    const/16 v4, 0x110

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19a

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x182

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16b

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x163

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x17f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x139

    const/16 v4, 0x19f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12f

    const/16 v4, 0x1c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x207

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x225

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x243

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x264

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x137

    const/16 v4, 0x282

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2a0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x154

    const/16 v4, 0x2bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x167

    const/16 v4, 0x2d6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x198

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1db

    const/16 v4, 0x31e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x202

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x228

    const/16 v4, 0x316

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x250

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x2f2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x2dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a5

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x2b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x2aa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x2a3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d0

    const/16 v4, 0x29e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d2

    const/16 v4, 0x29c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointC:[Landroid/graphics/Point;

    .line 67
    const/16 v0, 0x35

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x301

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x9b

    const/16 v4, 0x2e4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xa9

    const/16 v4, 0x2a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xba

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd0

    const/16 v4, 0x22b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe6

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfd

    const/16 v4, 0x1b2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x114

    const/16 v4, 0x185

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13b

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x164

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16e

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x181

    const/16 v4, 0x124

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0x15c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x18f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c6

    const/16 v4, 0x1ca

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d3

    const/16 v4, 0x1fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dd

    const/16 v4, 0x223

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e4

    const/16 v4, 0x23d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x24f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f1

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fb

    const/16 v4, 0x254

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20d

    const/16 v4, 0x241

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23c

    const/16 v4, 0x1fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x269

    const/16 v4, 0x1ac

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x166

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0xec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e2

    const/16 v4, 0xdf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2eb

    const/16 v4, 0xd9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ef

    const/16 v4, 0xd8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0xdb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0xed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x306

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30e

    const/16 v4, 0x15d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x19c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x323

    const/16 v4, 0x1eb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x238

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x33e

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x347

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x34f

    const/16 v4, 0x2ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x352

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x357

    const/16 v4, 0x317

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointM:[Landroid/graphics/Point;

    .line 79
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0x108

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc1

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc3

    const/16 v3, 0x145

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xc6

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xcb

    const/16 v4, 0x1ab

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd2

    const/16 v4, 0x1e9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xdc

    const/16 v4, 0x22e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe4

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xec

    const/16 v4, 0x2b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2df

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x104

    const/16 v4, 0x310

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10b

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x155

    const/16 v4, 0x2cf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17d

    const/16 v4, 0x28b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x246

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c0

    const/16 v4, 0x20b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d9

    const/16 v4, 0x1dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x1c9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x1b5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20b

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x211

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x224

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x22c

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x237

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2b8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x2e6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x259

    const/16 v4, 0x2fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25e

    const/16 v4, 0x300

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x265

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x273

    const/16 v4, 0x2f5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x294

    const/16 v4, 0x2c4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x279

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d6

    const/16 v4, 0x21d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f6

    const/16 v4, 0x1c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x310

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32e

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x346

    const/16 v4, 0xe8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointW:[Landroid/graphics/Point;

    .line 90
    const/16 v0, 0x23

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x157

    const/16 v3, 0x163

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x194

    const/16 v3, 0x15f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x158

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0x14f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25c

    const/16 v4, 0x149

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x147

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x14c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c7

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x284

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x233

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x195

    const/16 v4, 0x278

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x148

    const/16 v4, 0x2b1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11e

    const/16 v4, 0x2d3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xee

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xeb

    const/16 v4, 0x2fd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf6

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x134

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x309

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x311

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x30c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointZ:[Landroid/graphics/Point;

    .line 99
    const/16 v0, 0x29

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x295

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x283

    const/16 v3, 0xc5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x269

    const/16 v3, 0xc2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x247

    const/16 v4, 0xc1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x220

    const/16 v4, 0xc3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0xd1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0xe7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x183

    const/16 v4, 0x11b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x169

    const/16 v4, 0x136

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x156

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14a

    const/16 v4, 0x16c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x144

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x194

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14c

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x159

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x1ea

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x1ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20c

    const/16 v4, 0x214

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x227

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x267

    const/16 v4, 0x239

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x281

    const/16 v4, 0x247

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x298

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b6

    const/16 v4, 0x27b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x293

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x2ae

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x2c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29b

    const/16 v4, 0x2d7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x278

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x319

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19b

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16a

    const/16 v4, 0x329

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x322

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x31a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10a

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf5

    const/16 v4, 0x30f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointS:[Landroid/graphics/Point;

    .line 109
    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10a

    const/16 v3, 0x11c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0x135

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x119

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x126

    const/16 v4, 0x187

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x136

    const/16 v4, 0x1bd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15e

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x172

    const/16 v4, 0x267

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x186

    const/16 v4, 0x29d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19d

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1af

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1bd

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0x318

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d6

    const/16 v4, 0x324

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e8

    const/16 v4, 0x32b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fc

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x213

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x231

    const/16 v4, 0x2f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x2b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27a

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x18c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e8

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30d

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x315

    const/16 v4, 0xee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointV:[Landroid/graphics/Point;

    .line 117
    const/16 v0, 0x45

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13a

    const/16 v3, 0x1f8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x158

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x183

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x19e

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x1f7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fd

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21d

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1d9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25d

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x274

    const/16 v4, 0x1c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x289

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29a

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a8

    const/16 v4, 0x19b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x18e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x174

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c9

    const/16 v4, 0x16a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x156

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x14e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2bd

    const/16 v4, 0x13b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b1

    const/16 v4, 0x130

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29c

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x287

    const/16 v4, 0x116

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x253

    const/16 v4, 0x106

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0x102

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f6

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d4

    const/16 v4, 0x10b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b2

    const/16 v4, 0x11a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x140

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15b

    const/16 v4, 0x15a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x141

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12a

    const/16 v4, 0x198

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x109

    const/16 v4, 0x1db

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x1f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfa

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf7

    const/16 v4, 0x236

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x272

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x106

    const/16 v4, 0x28f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x112

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11f

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x2d5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2e7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15c

    const/16 v4, 0x2f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17e

    const/16 v4, 0x309

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a4

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cb

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f5

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x219

    const/16 v4, 0x30b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x26c

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x292

    const/16 v4, 0x2e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b5

    const/16 v4, 0x2d4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0x2c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x304

    const/16 v4, 0x29a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x28a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x320

    const/16 v4, 0x281

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x327

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32b

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x276

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x332

    const/16 v4, 0x275

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointE:[Landroid/graphics/Point;

    .line 133
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x119

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1b4

    const/16 v3, 0x11d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1aa

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x199

    const/16 v4, 0x138

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x185

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16c

    const/16 v4, 0x17e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x153

    const/16 v4, 0x1b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13f

    const/16 v4, 0x1f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x130

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x299

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x138

    const/16 v4, 0x2e1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x2f7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a2

    const/16 v4, 0x31b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x312

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2de

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x276

    const/16 v4, 0x2b0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x273

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cc

    const/16 v4, 0x237

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e1

    const/16 v4, 0x206

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x1d8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f1

    const/16 v4, 0x1b9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x199

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e4

    const/16 v4, 0x177

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d5

    const/16 v4, 0x15b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x131

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x296

    const/16 v4, 0x11e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x277

    const/16 v4, 0x10e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ed

    const/16 v4, 0x10a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cc

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b1

    const/16 v4, 0x125

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19f

    const/16 v4, 0x134

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x13f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x189

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x187

    const/16 v4, 0x14d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointO:[Landroid/graphics/Point;

    .line 144
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1e0

    const/16 v3, 0x36a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1de

    const/16 v3, 0x362

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x344

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x315

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x2d5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e1

    const/16 v4, 0x23a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e5

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x216

    const/16 v4, 0xeb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointUp:[Landroid/graphics/Point;

    .line 148
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$1;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$2;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$3;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$3;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;

    .line 219
    invoke-direct {p0}, Lcom/zte/zgesture/ui/AutoDrawView;->init()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v5, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    .line 55
    const/16 v0, 0x31

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2c7

    const/16 v3, 0x152

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b9

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x13a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29d

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x123

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27c

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x268

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x238

    const/16 v4, 0xfc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0xf8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x205

    const/16 v4, 0xf9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0xfd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ce

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b4

    const/16 v4, 0x110

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19a

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x182

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16b

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x163

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x17f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x139

    const/16 v4, 0x19f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12f

    const/16 v4, 0x1c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x207

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x225

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x243

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x264

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x137

    const/16 v4, 0x282

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2a0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x154

    const/16 v4, 0x2bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x167

    const/16 v4, 0x2d6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x198

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1db

    const/16 v4, 0x31e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x202

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x228

    const/16 v4, 0x316

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x250

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x2f2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x2dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a5

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x2b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x2aa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x2a3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d0

    const/16 v4, 0x29e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d2

    const/16 v4, 0x29c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointC:[Landroid/graphics/Point;

    .line 67
    const/16 v0, 0x35

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x301

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x9b

    const/16 v4, 0x2e4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xa9

    const/16 v4, 0x2a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xba

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd0

    const/16 v4, 0x22b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe6

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfd

    const/16 v4, 0x1b2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x114

    const/16 v4, 0x185

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13b

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x164

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16e

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x181

    const/16 v4, 0x124

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0x15c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x18f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c6

    const/16 v4, 0x1ca

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d3

    const/16 v4, 0x1fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dd

    const/16 v4, 0x223

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e4

    const/16 v4, 0x23d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x24f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f1

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fb

    const/16 v4, 0x254

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20d

    const/16 v4, 0x241

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23c

    const/16 v4, 0x1fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x269

    const/16 v4, 0x1ac

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x166

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0xec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e2

    const/16 v4, 0xdf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2eb

    const/16 v4, 0xd9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ef

    const/16 v4, 0xd8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0xdb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0xed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x306

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30e

    const/16 v4, 0x15d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x19c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x323

    const/16 v4, 0x1eb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x238

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x33e

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x347

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x34f

    const/16 v4, 0x2ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x352

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x357

    const/16 v4, 0x317

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointM:[Landroid/graphics/Point;

    .line 79
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0x108

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc1

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc3

    const/16 v3, 0x145

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xc6

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xcb

    const/16 v4, 0x1ab

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd2

    const/16 v4, 0x1e9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xdc

    const/16 v4, 0x22e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe4

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xec

    const/16 v4, 0x2b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2df

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x104

    const/16 v4, 0x310

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10b

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x155

    const/16 v4, 0x2cf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17d

    const/16 v4, 0x28b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x246

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c0

    const/16 v4, 0x20b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d9

    const/16 v4, 0x1dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x1c9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x1b5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20b

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x211

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x224

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x22c

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x237

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2b8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x2e6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x259

    const/16 v4, 0x2fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25e

    const/16 v4, 0x300

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x265

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x273

    const/16 v4, 0x2f5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x294

    const/16 v4, 0x2c4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x279

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d6

    const/16 v4, 0x21d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f6

    const/16 v4, 0x1c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x310

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32e

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x346

    const/16 v4, 0xe8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointW:[Landroid/graphics/Point;

    .line 90
    const/16 v0, 0x23

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x157

    const/16 v3, 0x163

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x194

    const/16 v3, 0x15f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x158

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0x14f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25c

    const/16 v4, 0x149

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x147

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x14c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c7

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x284

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x233

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x195

    const/16 v4, 0x278

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x148

    const/16 v4, 0x2b1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11e

    const/16 v4, 0x2d3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xee

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xeb

    const/16 v4, 0x2fd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf6

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x134

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x309

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x311

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x30c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointZ:[Landroid/graphics/Point;

    .line 99
    const/16 v0, 0x29

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x295

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x283

    const/16 v3, 0xc5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x269

    const/16 v3, 0xc2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x247

    const/16 v4, 0xc1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x220

    const/16 v4, 0xc3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0xd1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0xe7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x183

    const/16 v4, 0x11b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x169

    const/16 v4, 0x136

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x156

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14a

    const/16 v4, 0x16c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x144

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x194

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14c

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x159

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x1ea

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x1ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20c

    const/16 v4, 0x214

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x227

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x267

    const/16 v4, 0x239

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x281

    const/16 v4, 0x247

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x298

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b6

    const/16 v4, 0x27b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x293

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x2ae

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x2c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29b

    const/16 v4, 0x2d7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x278

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x319

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19b

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16a

    const/16 v4, 0x329

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x322

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x31a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10a

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf5

    const/16 v4, 0x30f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointS:[Landroid/graphics/Point;

    .line 109
    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10a

    const/16 v3, 0x11c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0x135

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x119

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x126

    const/16 v4, 0x187

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x136

    const/16 v4, 0x1bd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15e

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x172

    const/16 v4, 0x267

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x186

    const/16 v4, 0x29d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19d

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1af

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1bd

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0x318

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d6

    const/16 v4, 0x324

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e8

    const/16 v4, 0x32b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fc

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x213

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x231

    const/16 v4, 0x2f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x2b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27a

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x18c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e8

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30d

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x315

    const/16 v4, 0xee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointV:[Landroid/graphics/Point;

    .line 117
    const/16 v0, 0x45

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13a

    const/16 v3, 0x1f8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x158

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x183

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x19e

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x1f7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fd

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21d

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1d9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25d

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x274

    const/16 v4, 0x1c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x289

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29a

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a8

    const/16 v4, 0x19b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x18e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x174

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c9

    const/16 v4, 0x16a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x156

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x14e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2bd

    const/16 v4, 0x13b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b1

    const/16 v4, 0x130

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29c

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x287

    const/16 v4, 0x116

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x253

    const/16 v4, 0x106

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0x102

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f6

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d4

    const/16 v4, 0x10b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b2

    const/16 v4, 0x11a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x140

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15b

    const/16 v4, 0x15a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x141

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12a

    const/16 v4, 0x198

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x109

    const/16 v4, 0x1db

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x1f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfa

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf7

    const/16 v4, 0x236

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x272

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x106

    const/16 v4, 0x28f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x112

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11f

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x2d5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2e7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15c

    const/16 v4, 0x2f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17e

    const/16 v4, 0x309

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a4

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cb

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f5

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x219

    const/16 v4, 0x30b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x26c

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x292

    const/16 v4, 0x2e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b5

    const/16 v4, 0x2d4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0x2c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x304

    const/16 v4, 0x29a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x28a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x320

    const/16 v4, 0x281

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x327

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32b

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x276

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x332

    const/16 v4, 0x275

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointE:[Landroid/graphics/Point;

    .line 133
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x119

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1b4

    const/16 v3, 0x11d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1aa

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x199

    const/16 v4, 0x138

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x185

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16c

    const/16 v4, 0x17e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x153

    const/16 v4, 0x1b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13f

    const/16 v4, 0x1f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x130

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x299

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x138

    const/16 v4, 0x2e1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x2f7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a2

    const/16 v4, 0x31b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x312

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2de

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x276

    const/16 v4, 0x2b0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x273

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cc

    const/16 v4, 0x237

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e1

    const/16 v4, 0x206

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x1d8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f1

    const/16 v4, 0x1b9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x199

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e4

    const/16 v4, 0x177

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d5

    const/16 v4, 0x15b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x131

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x296

    const/16 v4, 0x11e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x277

    const/16 v4, 0x10e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ed

    const/16 v4, 0x10a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cc

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b1

    const/16 v4, 0x125

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19f

    const/16 v4, 0x134

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x13f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x189

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x187

    const/16 v4, 0x14d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointO:[Landroid/graphics/Point;

    .line 144
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1e0

    const/16 v3, 0x36a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1de

    const/16 v3, 0x362

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x344

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x315

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x2d5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e1

    const/16 v4, 0x23a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e5

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x216

    const/16 v4, 0xeb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointUp:[Landroid/graphics/Point;

    .line 148
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$1;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$2;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$3;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$3;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;

    .line 224
    invoke-direct {p0}, Lcom/zte/zgesture/ui/AutoDrawView;->init()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v5, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    .line 55
    const/16 v0, 0x31

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2d0

    const/16 v3, 0x15a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2c7

    const/16 v3, 0x152

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b9

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x13a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29d

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x123

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27c

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x268

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x238

    const/16 v4, 0xfc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0xf8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x205

    const/16 v4, 0xf9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0xfd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ce

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b4

    const/16 v4, 0x110

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19a

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x182

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16b

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x163

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x17f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x139

    const/16 v4, 0x19f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12f

    const/16 v4, 0x1c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x207

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x225

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x243

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x264

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x137

    const/16 v4, 0x282

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2a0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x154

    const/16 v4, 0x2bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x167

    const/16 v4, 0x2d6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x198

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1db

    const/16 v4, 0x31e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x202

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x228

    const/16 v4, 0x316

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x250

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x2f2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28d

    const/16 v4, 0x2dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a5

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x2b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x2aa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x2a3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d0

    const/16 v4, 0x29e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d2

    const/16 v4, 0x29c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointC:[Landroid/graphics/Point;

    .line 67
    const/16 v0, 0x35

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x311

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x97

    const/16 v3, 0x301

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x9b

    const/16 v4, 0x2e4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xa9

    const/16 v4, 0x2a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xba

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd0

    const/16 v4, 0x22b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe6

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfd

    const/16 v4, 0x1b2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x114

    const/16 v4, 0x185

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13b

    const/16 v4, 0x146

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x164

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16e

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x11f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x181

    const/16 v4, 0x124

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0x137

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0x15c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b7

    const/16 v4, 0x18f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c6

    const/16 v4, 0x1ca

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d3

    const/16 v4, 0x1fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dd

    const/16 v4, 0x223

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e4

    const/16 v4, 0x23d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x24f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f1

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fb

    const/16 v4, 0x254

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20d

    const/16 v4, 0x241

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23c

    const/16 v4, 0x1fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x269

    const/16 v4, 0x1ac

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x166

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ac

    const/16 v4, 0x12f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0xec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e2

    const/16 v4, 0xdf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2eb

    const/16 v4, 0xd9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ef

    const/16 v4, 0xd8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0xdb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0xed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x306

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30e

    const/16 v4, 0x15d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x19c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x323

    const/16 v4, 0x1eb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x238

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x33e

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x347

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x34f

    const/16 v4, 0x2ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x352

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x357

    const/16 v4, 0x317

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointM:[Landroid/graphics/Point;

    .line 79
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0x108

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc1

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc3

    const/16 v3, 0x145

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xc6

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xcb

    const/16 v4, 0x1ab

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xd2

    const/16 v4, 0x1e9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xdc

    const/16 v4, 0x22e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xe4

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xec

    const/16 v4, 0x2b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2df

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x104

    const/16 v4, 0x310

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10b

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x155

    const/16 v4, 0x2cf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17d

    const/16 v4, 0x28b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x246

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1c0

    const/16 v4, 0x20b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d9

    const/16 v4, 0x1dd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ea

    const/16 v4, 0x1c9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x1b5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20b

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x211

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x224

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x22c

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x237

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2b8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x251

    const/16 v4, 0x2e6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x259

    const/16 v4, 0x2fc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25e

    const/16 v4, 0x300

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x265

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x273

    const/16 v4, 0x2f5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x294

    const/16 v4, 0x2c4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x279

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d6

    const/16 v4, 0x21d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f6

    const/16 v4, 0x1c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x310

    const/16 v4, 0x172

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32e

    const/16 v4, 0x12b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x346

    const/16 v4, 0xe8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointW:[Landroid/graphics/Point;

    .line 90
    const/16 v0, 0x23

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x114

    const/16 v3, 0x15e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x157

    const/16 v3, 0x163

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x194

    const/16 v3, 0x15f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x158

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21f

    const/16 v4, 0x14f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25c

    const/16 v4, 0x149

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x28e

    const/16 v4, 0x147

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x148

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x14c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c7

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b7

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x284

    const/16 v4, 0x1b3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1ee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x233

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x195

    const/16 v4, 0x278

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x148

    const/16 v4, 0x2b1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11e

    const/16 v4, 0x2d3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf3

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xee

    const/16 v4, 0x2fa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xeb

    const/16 v4, 0x2fd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf6

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x134

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17b

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x2ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x301

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f3

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x309

    const/16 v4, 0x308

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x311

    const/16 v4, 0x30a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x30c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointZ:[Landroid/graphics/Point;

    .line 99
    const/16 v0, 0x29

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x2a0

    const/16 v3, 0xd1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x295

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x283

    const/16 v3, 0xc5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x269

    const/16 v3, 0xc2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x247

    const/16 v4, 0xc1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x220

    const/16 v4, 0xc3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f8

    const/16 v4, 0xd1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0xe7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x183

    const/16 v4, 0x11b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x169

    const/16 v4, 0x136

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x156

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14a

    const/16 v4, 0x16c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x144

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x194

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x14c

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x159

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a1

    const/16 v4, 0x1ea

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x1ff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20c

    const/16 v4, 0x214

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x23b

    const/16 v4, 0x227

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x267

    const/16 v4, 0x239

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x281

    const/16 v4, 0x247

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x298

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x268

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b6

    const/16 v4, 0x27b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x293

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x2ae

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x2c3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29b

    const/16 v4, 0x2d7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x278

    const/16 v4, 0x2f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x319

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19b

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16a

    const/16 v4, 0x329

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x145

    const/16 v4, 0x322

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x125

    const/16 v4, 0x31a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x10a

    const/16 v4, 0x314

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf5

    const/16 v4, 0x30f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointS:[Landroid/graphics/Point;

    .line 109
    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10a

    const/16 v3, 0x11c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0x135

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x119

    const/16 v4, 0x157

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x126

    const/16 v4, 0x187

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x136

    const/16 v4, 0x1bd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x149

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15e

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x172

    const/16 v4, 0x267

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x186

    const/16 v4, 0x29d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19d

    const/16 v4, 0x2c7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1af

    const/16 v4, 0x2ec

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1bd

    const/16 v4, 0x304

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ca

    const/16 v4, 0x318

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d6

    const/16 v4, 0x324

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e8

    const/16 v4, 0x32b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fc

    const/16 v4, 0x32a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x213

    const/16 v4, 0x31d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x231

    const/16 v4, 0x2f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x2b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x27a

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x299

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cd

    const/16 v4, 0x18c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e8

    const/16 v4, 0x150

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2fc

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x30d

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x315

    const/16 v4, 0xee

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointV:[Landroid/graphics/Point;

    .line 117
    const/16 v0, 0x45

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13a

    const/16 v3, 0x1f8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x158

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x183

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x19e

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x1f7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1dc

    const/16 v4, 0x1f3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1fd

    const/16 v4, 0x1ed

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x21d

    const/16 v4, 0x1e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x1d9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x25d

    const/16 v4, 0x1ce

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x274

    const/16 v4, 0x1c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x289

    const/16 v4, 0x1b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29a

    const/16 v4, 0x1a8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a8

    const/16 v4, 0x19b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b4

    const/16 v4, 0x18e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2be

    const/16 v4, 0x181

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x174

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c9

    const/16 v4, 0x16a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ca

    const/16 v4, 0x160

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cb

    const/16 v4, 0x156

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c8

    const/16 v4, 0x14e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2bd

    const/16 v4, 0x13b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b1

    const/16 v4, 0x130

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x29c

    const/16 v4, 0x122

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x287

    const/16 v4, 0x116

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x270

    const/16 v4, 0x10d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x253

    const/16 v4, 0x106

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0x102

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x217

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f6

    const/16 v4, 0x104

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d4

    const/16 v4, 0x10b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b2

    const/16 v4, 0x11a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x176

    const/16 v4, 0x140

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15b

    const/16 v4, 0x15a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x141

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12a

    const/16 v4, 0x198

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x117

    const/16 v4, 0x1bc

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x109

    const/16 v4, 0x1db

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xff

    const/16 v4, 0x1f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfa

    const/16 v4, 0x219

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf7

    const/16 v4, 0x236

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xf9

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfe

    const/16 v4, 0x272

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x106

    const/16 v4, 0x28f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x112

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x11f

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12e

    const/16 v4, 0x2d5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x143

    const/16 v4, 0x2e7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x15c

    const/16 v4, 0x2f9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x17e

    const/16 v4, 0x309

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a4

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cb

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1f5

    const/16 v4, 0x311

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x219

    const/16 v4, 0x30b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x242

    const/16 v4, 0x302

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x26c

    const/16 v4, 0x2f6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x292

    const/16 v4, 0x2e5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2b5

    const/16 v4, 0x2d4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d7

    const/16 v4, 0x2c0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x2ad

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x304

    const/16 v4, 0x29a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x316

    const/16 v4, 0x28a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x320

    const/16 v4, 0x281

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x327

    const/16 v4, 0x27a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32b

    const/16 v4, 0x277

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x32f

    const/16 v4, 0x276

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x332

    const/16 v4, 0x275

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointE:[Landroid/graphics/Point;

    .line 133
    const/16 v0, 0x2d

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bd

    const/16 v3, 0x118

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1bb

    const/16 v3, 0x119

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1b4

    const/16 v3, 0x11d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1aa

    const/16 v3, 0x125

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x199

    const/16 v4, 0x138

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x185

    const/16 v4, 0x152

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x16c

    const/16 v4, 0x17e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x153

    const/16 v4, 0x1b6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x13f

    const/16 v4, 0x1f1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x130

    const/16 v4, 0x22f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x129

    const/16 v4, 0x26a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x128

    const/16 v4, 0x299

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x12d

    const/16 v4, 0x2c1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x138

    const/16 v4, 0x2e1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x146

    const/16 v4, 0x2f7

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x157

    const/16 v4, 0x305

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x177

    const/16 v4, 0x313

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1a2

    const/16 v4, 0x31b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d7

    const/16 v4, 0x312

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x2fe

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x243

    const/16 v4, 0x2de

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x276

    const/16 v4, 0x2b0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2a9

    const/16 v4, 0x273

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2cc

    const/16 v4, 0x237

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e1

    const/16 v4, 0x206

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x1d8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2f1

    const/16 v4, 0x1b9

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2ee

    const/16 v4, 0x199

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2e4

    const/16 v4, 0x177

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d5

    const/16 v4, 0x15b

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2c4

    const/16 v4, 0x145

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2af

    const/16 v4, 0x131

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x296

    const/16 v4, 0x11e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x277

    const/16 v4, 0x10e

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x257

    const/16 v4, 0x103

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x234

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x20e

    const/16 v4, 0x101

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ed

    const/16 v4, 0x10a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1cc

    const/16 v4, 0x118

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1b1

    const/16 v4, 0x125

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x19f

    const/16 v4, 0x134

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x192

    const/16 v4, 0x13f

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x189

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x187

    const/16 v4, 0x14d

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointO:[Landroid/graphics/Point;

    .line 144
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1e0

    const/16 v3, 0x36a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1de

    const/16 v3, 0x362

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x344

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x315

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1dc

    const/16 v3, 0x2d5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1de

    const/16 v4, 0x288

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e1

    const/16 v4, 0x23a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e5

    const/16 v4, 0x1d1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1ee

    const/16 v4, 0x178

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x203

    const/16 v4, 0x132

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x216

    const/16 v4, 0xeb

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointUp:[Landroid/graphics/Point;

    .line 148
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$1;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$2;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/zte/zgesture/ui/AutoDrawView$3;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AutoDrawView$3;-><init>(Lcom/zte/zgesture/ui/AutoDrawView;)V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;

    .line 229
    invoke-direct {p0}, Lcom/zte/zgesture/ui/AutoDrawView;->init()V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/zgesture/ui/AutoDrawView;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;
    .param p1, "x1"    # Landroid/graphics/Path;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/zgesture/ui/AutoDrawView;)[Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/zgesture/ui/AutoDrawView;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/zgesture/ui/AutoDrawView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    return p1
.end method

.method static synthetic access$608(Lcom/zte/zgesture/ui/AutoDrawView;)I
    .locals 2
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I

    return v0
.end method

.method static synthetic access$700(Lcom/zte/zgesture/ui/AutoDrawView;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/ui/AutoDrawView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-virtual {p0, v2}, Lcom/zte/zgesture/ui/AutoDrawView;->setZOrderOnTop(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/AutoDrawView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;

    .line 235
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 236
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 241
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    .line 244
    return-void
.end method


# virtual methods
.method public loadShape(I)V
    .locals 1
    .param p1, "shape"    # I

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointC:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 250
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointC:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointM:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 254
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointM:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointW:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 258
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointW:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointZ:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 262
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointZ:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 265
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointS:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 266
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointS:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 269
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointV:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 270
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointV:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 273
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointE:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 274
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointE:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 277
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointO:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 278
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointO:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 281
    :pswitch_8
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointUp:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;

    .line 282
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPointUp:[Landroid/graphics/Point;

    array-length v0, v0

    iput v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AutoDrawView;->mStartDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 299
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 293
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 305
    return-void
.end method
