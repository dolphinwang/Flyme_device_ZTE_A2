.class public Lcom/hcrest/gestures/symbol/SymbolMatch;
.super Ljava/lang/Object;
.source "SymbolMatch.java"


# instance fields
.field private final mPercentMatch:D

.field private final mSymbol:Lcom/hcrest/gestures/symbol/SymbolGesture;


# direct methods
.method protected constructor <init>(Lcom/hcrest/gestures/symbol/SymbolGesture;D)V
    .locals 0
    .param p1, "symbol"    # Lcom/hcrest/gestures/symbol/SymbolGesture;
    .param p2, "percentMatch"    # D

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolMatch;->mSymbol:Lcom/hcrest/gestures/symbol/SymbolGesture;

    .line 45
    iput-wide p2, p0, Lcom/hcrest/gestures/symbol/SymbolMatch;->mPercentMatch:D

    .line 46
    return-void
.end method


# virtual methods
.method public getPercentMatch()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolMatch;->mPercentMatch:D

    return-wide v0
.end method

.method public getSymbol()Lcom/hcrest/gestures/symbol/SymbolGesture;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolMatch;->mSymbol:Lcom/hcrest/gestures/symbol/SymbolGesture;

    return-object v0
.end method
