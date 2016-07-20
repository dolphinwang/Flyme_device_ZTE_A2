.class public Lcom/zte/zgesture/data/CallItem;
.super Ljava/lang/Object;
.source "CallItem.java"


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/CallItem;->name:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/CallItem;->number:Ljava/lang/String;

    return-void
.end method
