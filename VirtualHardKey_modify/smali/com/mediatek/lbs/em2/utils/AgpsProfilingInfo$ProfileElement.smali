.class public Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;
.super Ljava/lang/Object;
.source "AgpsProfilingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileElement"
.end annotation


# static fields
.field public static final PROFILING_TYPE_ERROR:I = 0x2

.field public static final PROFILING_TYPE_NORMAL:I = 0x0

.field public static final PROFILING_TYPE_WARNING:I = 0x1


# instance fields
.field protected message:Ljava/lang/String;

.field protected timestamp:J

.field protected type:I


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->type:I

    .line 52
    iput-wide p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->timestamp:J

    .line 53
    iput-object p4, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->message:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->type:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->message:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->timestamp:J

    .line 74
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->type:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo$ProfileElement;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
