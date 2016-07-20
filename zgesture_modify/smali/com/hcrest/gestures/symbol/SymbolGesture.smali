.class public Lcom/hcrest/gestures/symbol/SymbolGesture;
.super Ljava/lang/Object;
.source "SymbolGesture.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mNumSegments:I

.field private mPattern:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numSegments"    # I
    .param p3, "pattern"    # [I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mName:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mNumSegments:I

    .line 89
    iput-object p3, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mPattern:[I

    .line 90
    return-void
.end method


# virtual methods
.method public getDefinitionString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget v5, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mNumSegments:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mPattern:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 148
    .local v2, "i":I
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumSegments()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mNumSegments:I

    return v0
.end method

.method public getPattern()[I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mPattern:[I

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGesture;->mName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getDefinitionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method
