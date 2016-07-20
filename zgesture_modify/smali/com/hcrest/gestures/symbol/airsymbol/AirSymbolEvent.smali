.class public Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "AirSymbolEvent.java"


# static fields
.field public static final TYPE_AIRSYMBOL:Ljava/lang/String; = "airsymbol"

.field private static final serialVersionUID:J = 0x469f9b2fbee4e002L


# instance fields
.field private final mResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .prologue
    .line 33
    const-string v0, "airsymbol"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;->mResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;->mResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;->mResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
