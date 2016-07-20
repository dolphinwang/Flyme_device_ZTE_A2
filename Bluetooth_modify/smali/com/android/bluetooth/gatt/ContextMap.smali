.class Lcom/android/bluetooth/gatt/ContextMap;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ContextMap$App;,
        Lcom/android/bluetooth/gatt/ContextMap$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtGatt.ContextMap"


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;>;"
        }
    .end annotation
.end field

.field mConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method add(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap$App;-><init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addConnection(IILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connId"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 184
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v2

    .line 185
    :try_start_0
    const-string v1, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConnection: before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 187
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    new-instance v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/bluetooth/gatt/ContextMap$Connection;-><init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    const-string v1, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConnection: after  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v2

    .line 192
    return-void

    .line 191
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addressByConnId(I)Ljava/lang/String;
    .locals 3
    .param p1, "connId"    # I

    .prologue
    .line 288
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 289
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 291
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    .line 293
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clear()V
    .locals 4

    .prologue
    .line 311
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 315
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 318
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 321
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 322
    monitor-exit v3

    .line 323
    return-void

    .line 322
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "id"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    const/4 v4, 0x0

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 273
    .local v1, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-nez v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 281
    :goto_0
    return-object v3

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 276
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 278
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_1

    .line 279
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 281
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 329
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 332
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 334
    .local v2, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v5, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n  Application Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Connections: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 341
    .local v4, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 343
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 346
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    .end local v2    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v4    # "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    return-void
.end method

.method getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 3
    .param p1, "connId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 261
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    .line 262
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v2

    .line 265
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 221
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v2, p1, :cond_0

    .line 224
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :goto_0
    return-object v0

    .line 223
    :cond_1
    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context not found for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 234
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :goto_0
    return-object v0

    .line 236
    :cond_1
    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context not found for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConnectedDevices()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v0, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 248
    .local v1, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    const-string v3, "BtGatt.ContextMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedDevices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_0
    return-object v0
.end method

.method getConnectionByApp(I)Ljava/util/List;
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "currentConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 299
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 301
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_0

    .line 302
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_1
    return-object v1
.end method

.method remove(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 167
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 171
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v2, p1, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 177
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    monitor-exit v3

    .line 178
    return-void

    .line 177
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method remove(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 150
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 154
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 160
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    monitor-exit v3

    .line 161
    return-void

    .line 160
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeConnection(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "connId"    # I

    .prologue
    .line 198
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 199
    :try_start_0
    const-string v2, "BtGatt.ContextMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeConnection: after  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 203
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p2, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    const-string v2, "BtGatt.ContextMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeConnection: remove connId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 210
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    :try_start_1
    const-string v2, "BtGatt.ContextMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeConnection: after  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    return-void
.end method
