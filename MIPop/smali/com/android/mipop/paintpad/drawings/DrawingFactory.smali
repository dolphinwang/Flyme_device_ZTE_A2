.class public Lcom/android/mipop/paintpad/drawings/DrawingFactory;
.super Ljava/lang/Object;
.source "DrawingFactory.java"


# static fields
.field private static drawing:Lcom/android/mipop/paintpad/drawings/Drawing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrawing(I)Lcom/android/mipop/paintpad/drawings/Drawing;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 32
    new-instance v0, Lcom/android/mipop/paintpad/drawings/PathLine;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/PathLine;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 35
    :goto_0
    sget-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Circle;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Circle;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Eraser;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Eraser;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 17
    :pswitch_2
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Line;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Line;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 20
    :pswitch_3
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Oval;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Oval;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 23
    :pswitch_4
    new-instance v0, Lcom/android/mipop/paintpad/drawings/PathLine;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/PathLine;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 26
    :pswitch_5
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Points;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Points;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 29
    :pswitch_6
    new-instance v0, Lcom/android/mipop/paintpad/drawings/Rect;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/Rect;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
