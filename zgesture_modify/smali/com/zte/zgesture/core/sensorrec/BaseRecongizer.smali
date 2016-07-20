.class public abstract Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.super Ljava/lang/Object;
.source "BaseRecongizer.java"


# instance fields
.field protected mClientList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/external/InterfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mCopyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/external/InterfaceControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected hasClient()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 1
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method protected sendToClient()V
    .locals 4

    .prologue
    .line 27
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    iget-object v3, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/core/external/InterfaceControl;

    .line 29
    .local v0, "client":Lcom/zte/zgesture/core/external/InterfaceControl;
    invoke-interface {v0}, Lcom/zte/zgesture/core/external/InterfaceControl;->recongizerAction()V

    goto :goto_0

    .line 31
    .end local v0    # "client":Lcom/zte/zgesture/core/external/InterfaceControl;
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 32
    return-void
.end method

.method protected sendToClient(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 36
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    iget-object v3, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/core/external/InterfaceControl;

    .line 38
    .local v0, "client":Lcom/zte/zgesture/core/external/InterfaceControl;
    invoke-interface {v0}, Lcom/zte/zgesture/core/external/InterfaceControl;->recongizerAction()V

    goto :goto_0

    .line 40
    .end local v0    # "client":Lcom/zte/zgesture/core/external/InterfaceControl;
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mCopyList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 41
    return-void
.end method

.method public unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 1
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->mClientList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
