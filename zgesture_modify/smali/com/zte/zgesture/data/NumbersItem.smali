.class public Lcom/zte/zgesture/data/NumbersItem;
.super Ljava/lang/Object;
.source "NumbersItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public isDefault:Z

.field public number:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/NumbersItem;->number:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zgesture/data/NumbersItem;->type:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/data/NumbersItem;->isDefault:Z

    return-void
.end method
