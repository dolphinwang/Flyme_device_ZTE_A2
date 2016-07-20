.class public Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;
.super Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;
.source "SymbolGestureDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isActive:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "gestureDefinitions"    # Ljava/io/InputStream;
    .param p2, "gestureGroup"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->isActive:Z

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public addGestureListener(Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public process(Ljava/util/Vector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, "lastPt":Lcom/hcrest/sensors/util/Vector3D;
    new-array v4, v7, [I

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4, v6}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->handleBodyFrame([IZ)V

    .line 92
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/sensors/util/Vector3D;

    .line 93
    .local v3, "pt":Lcom/hcrest/sensors/util/Vector3D;
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v3, v2}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    .line 95
    .local v0, "delta":Lcom/hcrest/sensors/util/Vector3D;
    new-array v4, v7, [I

    invoke-virtual {v0}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v6

    invoke-virtual {v0}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v8

    invoke-virtual {p0, v4, v8}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->handleBodyFrame([IZ)V

    .line 97
    .end local v0    # "delta":Lcom/hcrest/sensors/util/Vector3D;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 100
    .end local v3    # "pt":Lcom/hcrest/sensors/util/Vector3D;
    :cond_1
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    invoke-virtual {p0, v4, v6}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->handleBodyFrame([IZ)V

    .line 101
    return-void

    .line 90
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 100
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 106
    iget-object v5, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 107
    instance-of v5, p2, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    if-eqz v5, :cond_2

    move-object v4, p2

    .line 108
    check-cast v4, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    .line 109
    .local v4, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v5, "Learning"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "New gesture recognized"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "gestName":[Ljava/lang/String;
    new-instance v0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;

    const/4 v5, 0x2

    aget-object v6, v1, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;-><init>(ILjava/lang/String;)V

    .line 114
    .local v0, "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getPattern()[I

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->setPattern([I)V

    .line 115
    iget-object v5, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;

    .line 116
    .local v3, "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    invoke-interface {v3, v0}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;->gestureLearned(Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;)V

    goto :goto_0

    .line 119
    .end local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    .end local v1    # "gestName":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    :cond_0
    new-instance v0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v8}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;-><init>(ILjava/lang/String;)V

    .line 120
    .restart local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    iget-object v5, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;

    .line 121
    .restart local v3    # "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    invoke-interface {v3, v0}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;->gestureLearned(Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;)V

    goto :goto_1

    .line 124
    .end local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    :cond_1
    const-string v5, "Status"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IDLE|CAPTURING|START.*|STOP.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    .end local v4    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    :cond_2
    return-void

    .line 128
    .restart local v4    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    :cond_3
    const/4 v0, 0x0

    .line 129
    .restart local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NOT MATCHED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 130
    new-instance v0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;

    .end local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    const/4 v5, -0x1

    invoke-direct {v0, v5, v8}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;-><init>(ILjava/lang/String;)V

    .line 134
    .restart local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    :goto_2
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getData()[[I

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;->setData([[I)V

    .line 136
    iget-object v5, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;

    .line 137
    .restart local v3    # "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    invoke-interface {v3, v0}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;->gestureRecognized(Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;)V

    goto :goto_3

    .line 132
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEventListener;
    :cond_4
    new-instance v0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;

    .end local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    invoke-virtual {v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;-><init>(ILjava/lang/String;)V

    .restart local v0    # "event":Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureEvent;
    goto :goto_2
.end method

.method public startCapture()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->isActive:Z

    .line 64
    return-void
.end method

.method public stopCapture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->isActive:Z

    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->update(II)V

    .line 72
    return-void
.end method

.method public update(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-boolean v1, p0, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->isActive:Z

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/motionengine/symbol/gesture/SymbolGestureDetector;->handleBodyFrame([IZ)V

    .line 81
    return-void
.end method
