.class public Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "CursorSymbolDetectorConfig.java"


# static fields
.field public static final DEFAULT_INTERSECTDISTANCE:F = 20.0f

.field public static final DEFAULT_MAXSEGMENTDISTANCE:F = 100.0f

.field public static final DEFAULT_MULTISTROKECONVERSIONPERCENTMATCH:D = 0.8

.field public static final DEFAULT_MULTISTROKESTRATEGY:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;


# instance fields
.field protected final intersectDistance:F

.field protected final maxSegmentDistance:F

.field protected final multiStrokeConversionPercentMatch:D

.field protected final multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    sput-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->DEFAULT_MULTISTROKESTRATEGY:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 75
    sget-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->DEFAULT_MULTISTROKESTRATEGY:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 76
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    .line 78
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;)V
    .locals 2
    .param p1, "multiStrokeStrategy"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 89
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    .line 90
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    .line 91
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;FF)V
    .locals 2
    .param p1, "multiStrokeStrategy"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    .param p2, "maxSegmentDistance"    # F
    .param p3, "intersectDistance"    # F

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 108
    iput p2, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    .line 109
    iput p3, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    .line 110
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;FFD)V
    .locals 0
    .param p1, "multiStrokeStrategy"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    .param p2, "maxSegmentDistance"    # F
    .param p3, "intersectDistance"    # F
    .param p4, "multiStrokeConversionPercentMatch"    # D

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 132
    iput p2, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    .line 133
    iput p3, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    .line 134
    iput-wide p4, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    .line 135
    return-void
.end method


# virtual methods
.method public getIntersectDistance()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    return v0
.end method

.method public getMaxSegmentDistance()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    return v0
.end method

.method public getMultiStrokeConversionPercentMatch()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    return-wide v0
.end method

.method public getMultiStrokeStrategy()Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    return-object v0
.end method
