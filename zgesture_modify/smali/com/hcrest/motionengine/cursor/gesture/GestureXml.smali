.class Lcom/hcrest/motionengine/cursor/gesture/GestureXml;
.super Ljava/lang/Object;
.source "GestureXml.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GESTURE_CODE_TAG:Ljava/lang/String; = "code"

.field private static final GESTURE_GROUP_TAG:Ljava/lang/String; = "group"

.field private static final GESTURE_IMAGENAME_TAG:Ljava/lang/String; = "imageName"

.field private static final GESTURE_TAG:Ljava/lang/String; = "Gesture"

.field private static log_:Ljava/util/logging/Logger;


# instance fields
.field private characterString_:Ljava/lang/String;

.field private container_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hcrest/motionengine/cursor/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

.field private groups_:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stack_:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->log_:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    .line 43
    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->stack_:Ljava/util/LinkedList;

    .line 44
    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 45
    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->groups_:Ljava/util/HashSet;

    .line 51
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->initialize()V

    .line 52
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->groups_:Ljava/util/HashSet;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->stack_:Ljava/util/LinkedList;

    .line 60
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;

    invoke-direct {v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;-><init>()V

    .line 243
    .local v0, "test":Lcom/hcrest/motionengine/cursor/gesture/GestureXml;
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->stack_:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "current":Ljava/lang/String;
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "Gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 160
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    .line 162
    :cond_1
    return-void

    .line 152
    :cond_2
    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->setCode(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->setGroup(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->groups_:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_4
    const-string v1, "imageName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->setImageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method public getGestures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hcrest/motionengine/cursor/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hcrest/motionengine/cursor/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    .line 85
    :cond_1
    return-object v0

    .line 79
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hcrest/motionengine/cursor/gesture/Gesture;>;"
    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 81
    .local v1, "gesture":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    invoke-virtual {v1}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "instr"    # Ljava/io/InputStream;

    .prologue
    .line 100
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->load(Lorg/xml/sax/InputSource;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->load(Lorg/xml/sax/InputSource;)Z

    move-result v0

    return v0
.end method

.method protected load(Lorg/xml/sax/InputSource;)Z
    .locals 5
    .param p1, "src"    # Lorg/xml/sax/InputSource;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->initialize()V

    .line 108
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 109
    .local v1, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 114
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 116
    .local v0, "parser":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 117
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "parser":Lorg/xml/sax/XMLReader;
    .end local v1    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v2

    :goto_1
    move v2, v3

    .line 129
    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    goto :goto_1

    .line 121
    :catch_2
    move-exception v2

    goto :goto_1

    .line 119
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 184
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->stack_:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->characterString_:Ljava/lang/String;

    .line 202
    const-string v0, "Gesture"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->gesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 205
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v3, "GestureXML contains "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v3, " gestures:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->container_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 221
    .local v1, "gesture":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v1}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 225
    .end local v1    # "gesture":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
