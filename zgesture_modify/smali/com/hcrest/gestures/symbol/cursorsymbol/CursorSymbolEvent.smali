.class public Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "CursorSymbolEvent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/MotionEngineEvent;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/hcrest/gestures/symbol/SymbolGestureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_CURSORSYMBOL:Ljava/lang/String; = "cursorsymbol"

.field private static final serialVersionUID:J = 0xdfd7768d0797ce2L


# instance fields
.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGestureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/util/List;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGestureResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/SymbolGestureResult;>;"
    const-string v3, "cursorsymbol"

    invoke-direct {p0, p1, v3}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mResults:Ljava/util/List;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, "output":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .line 44
    .local v2, "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    .end local v2    # "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mValue:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getResult(I)Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGestureResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
