.class public Lcom/zte/mifavor/pressure/SpotFilter$Spot;
.super Ljava/lang/Object;
.source "SpotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/pressure/SpotFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spot"
.end annotation


# instance fields
.field public mAction:I

.field public mPressure:F

.field public mSize:F

.field public mTime:J

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 20
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(IFFFFJ)V

    .line 21
    return-void
.end method

.method public constructor <init>(IFFFFJ)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F
    .param p5, "pressure"    # F
    .param p6, "time"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual/range {p0 .. p7}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->update(IFFFFJ)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 8
    .param p1, "src"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 24
    iget v1, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mAction:I

    iget v2, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mX:F

    iget v3, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mY:F

    iget v4, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mSize:F

    iget v5, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    iget-wide v6, p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(IFFFFJ)V

    .line 25
    return-void
.end method


# virtual methods
.method public update(IFFFFJ)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F
    .param p5, "pressure"    # F
    .param p6, "time"    # J

    .prologue
    .line 32
    iput p1, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mAction:I

    .line 33
    iput p2, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mX:F

    .line 34
    iput p3, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mY:F

    .line 35
    iput p4, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mSize:F

    .line 36
    iput p5, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    .line 37
    iput-wide p6, p0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    .line 38
    return-void
.end method
