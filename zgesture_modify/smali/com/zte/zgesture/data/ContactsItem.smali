.class public Lcom/zte/zgesture/data/ContactsItem;
.super Ljava/lang/Object;
.source "ContactsItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/zgesture/data/NumbersItem;",
            ">;"
        }
    .end annotation
.end field

.field public rawContact:Lcom/zte/zgesture/data/RawContactItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/zte/zgesture/data/RawContactItem;

    invoke-direct {v0}, Lcom/zte/zgesture/data/RawContactItem;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/data/ContactsItem;->rawContact:Lcom/zte/zgesture/data/RawContactItem;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/data/ContactsItem;->numbers:Ljava/util/ArrayList;

    return-void
.end method
