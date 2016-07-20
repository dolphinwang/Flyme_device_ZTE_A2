.class public Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorCaptureHeader"
.end annotation


# static fields
.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/hcrest/sensors/SensorType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 579
    const-string v0, "^\\+(\\d) TIME\\{([^\\}]+)\\},([A-Z_]+)(\\[([a-z]+)\\])?(\\{([^\\]]+)\\})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->f:Ljava/util/regex/Pattern;

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    .line 584
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "ANG_POS_GLOBAL"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "ANG_VEL"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "APP_STATE"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->APP_STATE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "GRAVITY"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "LIN_ACC_GRAVITY"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "LIN_ACC"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "MAG"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "EULER"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ORIENTATION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "REL_CURSOR"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "PRESSURE"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->PRESSURE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    const-string v1, "PROXIMITY"

    sget-object v2, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lcom/hcrest/sensors/SensorType;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "timeUnits"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/hcrest/sensors/SensorType;
    .param p4, "values"    # [Ljava/lang/String;
    .param p5, "sensorUnits"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->a:I

    .line 599
    iput-object p3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->b:Lcom/hcrest/sensors/SensorType;

    .line 600
    iput-object p4, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->e:[Ljava/lang/String;

    .line 601
    iput-object p5, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->d:Ljava/lang/String;

    .line 602
    iput-object p2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->c:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;
    .locals 8
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 626
    sget-object v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-object v4

    .line 631
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 632
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 637
    sget-object v6, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 638
    sget-object v6, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/sensors/SensorType;

    .line 639
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 640
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 642
    :cond_2
    new-instance v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;-><init>(ILjava/lang/String;Lcom/hcrest/sensors/SensorType;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0
.end method


# virtual methods
.method public getSensorIndex()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->a:I

    return v0
.end method

.method public getSensorType()Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->b:Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method

.method public getSensorUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->c:Ljava/lang/String;

    return-object v0
.end method
