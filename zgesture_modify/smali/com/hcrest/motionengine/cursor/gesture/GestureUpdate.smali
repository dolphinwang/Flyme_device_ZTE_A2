.class public Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
.super Ljava/lang/Object;
.source "GestureUpdate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data_:[[I

.field private final endTime_:J

.field private final imageName_:Ljava/lang/String;

.field private final name_:Ljava/lang/String;

.field private final pattern_:[I

.field private final percentage_:I

.field private final startTime_:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "percentage"    # I
    .param p4, "data"    # [[I
    .param p5, "start"    # J
    .param p7, "end"    # J

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[I[IJJ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[[I[IJJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "percentage"    # I
    .param p4, "data"    # [[I
    .param p5, "pattern"    # [I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->name_:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->imageName_:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->percentage_:I

    .line 41
    iput-object p4, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->data_:[[I

    .line 42
    iput-wide p6, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->startTime_:J

    .line 43
    iput-wide p8, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->endTime_:J

    .line 44
    iput-object p5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->pattern_:[I

    .line 45
    return-void
.end method


# virtual methods
.method public getData()[[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->data_:[[I

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->endTime_:J

    return-wide v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->imageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()[I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->pattern_:[I

    return-object v0
.end method

.method public getPercentage()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->percentage_:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->startTime_:J

    return-wide v0
.end method
