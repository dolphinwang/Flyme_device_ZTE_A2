.class public Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
.super Ljava/lang/Object;
.source "SymbolGestureEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LEARNED:I = 0x2

.field public static final MATCHED:I = 0x1

.field public static final NOT_LEARNED:I = -0x2

.field public static final NOT_MATCHED:I = -0x1


# instance fields
.field private data:[[I

.field private message:Ljava/lang/String;

.field private pattern:[I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->type:I

    .line 31
    iput-object p2, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->message:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->pattern:[I

    .line 33
    check-cast v0, [[I

    iput-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->data:[[I

    .line 34
    return-void
.end method


# virtual methods
.method public getData()[[I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->data:[[I

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->pattern:[I

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->type:I

    return v0
.end method

.method public setData([[I)V
    .locals 0
    .param p1, "data"    # [[I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->data:[[I

    .line 74
    return-void
.end method

.method public setPattern([I)V
    .locals 0
    .param p1, "pattern"    # [I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->pattern:[I

    .line 61
    return-void
.end method
