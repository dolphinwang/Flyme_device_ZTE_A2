.class public Lcom/zte/zgesture/data/RawContactItem;
.super Ljava/lang/Object;
.source "RawContactItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/data/RawContactItem;->id:I

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/RawContactItem;->name:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/RawContactItem;->version:Ljava/lang/String;

    return-void
.end method
