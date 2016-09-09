.class public Lcom/mediatek/pq/PictureQuality$Hist;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pq/PictureQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hist"
.end annotation


# instance fields
.field public info:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/mediatek/pq/PictureQuality$Hist;->info:[I

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/pq/PictureQuality$Hist;->set(II)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 104
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/pq/PictureQuality$Hist;->info:[I

    aput p2, v0, p1

    .line 107
    :cond_0
    return-void
.end method
