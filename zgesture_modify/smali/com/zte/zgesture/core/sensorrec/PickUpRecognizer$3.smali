.class Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;
.super Ljava/lang/Object;
.source "PickUpRecognizer.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 12
    .param p1, "values"    # [F

    .prologue
    .line 142
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$400(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->getTimeInterval()J

    move-result-wide v8

    long-to-float v8, v8

    const v9, 0x3089705f    # 1.0E-9f

    mul-float v0, v8, v9

    .line 144
    .local v0, "interval":F
    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v8, 0x0

    aget v5, p1, v8

    .local v5, "x":F
    const/4 v8, 0x1

    aget v6, p1, v8

    .local v6, "y":F
    const/4 v8, 0x2

    aget v7, p1, v8

    .line 152
    .local v7, "z":F
    float-to-double v8, v6

    mul-float v10, v5, v5

    mul-float v11, v6, v6

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921f9f01b866eL    # 3.14159

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 153
    .local v4, "roll":I
    float-to-double v8, v7

    mul-float v10, v5, v5

    mul-float v11, v6, v6

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921f9f01b866eL    # 3.14159

    div-double/2addr v8, v10

    double-to-int v3, v8

    .line 159
    .local v3, "pitch":I
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$500(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I

    move-result v8

    if-ltz v8, :cond_2

    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$600(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I

    move-result v8

    const/16 v9, -0x5a

    if-ge v8, v9, :cond_3

    .line 160
    :cond_2
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I
    invoke-static {v8, v4}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$502(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I

    .line 161
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I
    invoke-static {v8, v3}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$602(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I

    goto :goto_0

    .line 165
    :cond_3
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$500(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I

    move-result v2

    .line 166
    .local v2, "lastRoll":I
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$600(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I

    move-result v1

    .line 168
    .local v1, "lastPitch":I
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I
    invoke-static {v8, v4}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$502(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I

    .line 169
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I
    invoke-static {v8, v3}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$602(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I

    .line 172
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$300(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 174
    sub-int v8, v2, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v9, v0

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_4

    sub-int v8, v1, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v9, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 176
    :cond_4
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$700(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 177
    const-string v8, "PickUpReconizer"

    const-string v9, " detect far moving "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_5
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x1

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$702(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 180
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$802(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F

    goto/16 :goto_0

    .line 183
    :cond_6
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # += operator for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F
    invoke-static {v8, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$816(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F

    .line 184
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$700(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$800(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F

    move-result v8

    const v9, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 185
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$702(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 186
    const-string v8, "PickUpReconizer"

    const-string v9, " detect far moving stop "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :cond_7
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # += operator for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F
    invoke-static {v8, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$916(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F

    .line 196
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$900(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 201
    sub-int v8, v2, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v9, v0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    sub-int v8, v1, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v9, v0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    .line 203
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 204
    const-string v8, "PickUpReconizer"

    const-string v9, " detect near moving stop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_8
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x1

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1002(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 207
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1102(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F

    .line 217
    :goto_1
    const-string v8, "PickUpReconizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mNearTime is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F
    invoke-static {v10}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$900(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$700(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-lez v4, :cond_0

    const/16 v8, 0x5a

    if-ge v4, v8, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lez v8, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x1e

    if-ge v8, v9, :cond_0

    .line 221
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1200(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 222
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # invokes: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->resetData()V
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$100(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V

    .line 223
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x1

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1202(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 224
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->sendToClient()V

    .line 225
    const-string v8, "PickUpReconizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " SensorPickUpReconizer is trigger;  and position is roll: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pitch:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    :cond_9
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # += operator for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F
    invoke-static {v8, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1116(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F

    .line 210
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F
    invoke-static {v8}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1100(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F

    move-result v8

    const v9, 0x3e4ccccd    # 0.2f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    .line 212
    const-string v8, "PickUpReconizer"

    const-string v9, " detect near moving"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_a
    iget-object v8, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z
    invoke-static {v8, v9}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$1002(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    goto/16 :goto_1
.end method
