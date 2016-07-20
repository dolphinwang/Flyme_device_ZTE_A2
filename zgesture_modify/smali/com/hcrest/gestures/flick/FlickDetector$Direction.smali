.class public final enum Lcom/hcrest/gestures/flick/FlickDetector$Direction;
.super Ljava/lang/Enum;
.source "FlickDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/flick/FlickDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/gestures/flick/FlickDetector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcrest/gestures/flick/FlickDetector$Direction;

.field public static final enum DOWN:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

.field public static final enum LEFT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

.field public static final enum RIGHT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

.field public static final enum UP:Lcom/hcrest/gestures/flick/FlickDetector$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/hcrest/gestures/flick/FlickDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->LEFT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 29
    new-instance v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/gestures/flick/FlickDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->RIGHT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 32
    new-instance v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/hcrest/gestures/flick/FlickDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->UP:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 35
    new-instance v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5}, Lcom/hcrest/gestures/flick/FlickDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->DOWN:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    sget-object v1, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->LEFT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->RIGHT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->UP:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->DOWN:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->$VALUES:[Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->$VALUES:[Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    invoke-virtual {v0}, [Lcom/hcrest/gestures/flick/FlickDetector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    return-object v0
.end method
