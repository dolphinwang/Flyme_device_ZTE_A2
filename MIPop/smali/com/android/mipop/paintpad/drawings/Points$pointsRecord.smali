.class Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;
.super Ljava/lang/Object;
.source "Points.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/drawings/Points;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "pointsRecord"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/drawings/Points;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/mipop/paintpad/drawings/Points;FF)V
    .locals 0
    .param p2, "in_x"    # F
    .param p3, "in_y"    # F

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->this$0:Lcom/android/mipop/paintpad/drawings/Points;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->x:F

    .line 19
    iput p3, p0, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->y:F

    .line 20
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->y:F

    return v0
.end method
