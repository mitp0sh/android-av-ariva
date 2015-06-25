.class public final Landroid/support/v7/internal/view/c;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final a:[Ljava/lang/Object;

.field private final b:[Ljava/lang/Object;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    .line 71
    sput-object v0, Landroid/support/v7/internal/view/c;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/internal/view/c;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/c;->c:Landroid/content/Context;

    .line 89
    iput-object p1, p0, Landroid/support/v7/internal/view/c;->d:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/internal/view/c;->a:[Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/internal/view/c;->b:[Ljava/lang/Object;

    .line 92
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 132
    new-instance v7, Landroid/support/v7/internal/view/e;

    invoke-direct {v7, p0, p3}, Landroid/support/v7/internal/view/e;-><init>(Landroid/support/v7/internal/view/c;Landroid/view/Menu;)V

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 141
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v2, "menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    move-object v2, v4

    move v5, v6

    move v3, v0

    move v0, v6

    .line 155
    :goto_1
    if-nez v0, :cond_b

    .line 156
    packed-switch v3, :pswitch_data_0

    :cond_1
    move v3, v5

    .line 206
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v9, v3

    move v3, v5

    move v5, v9

    goto :goto_1

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting menu, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 152
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 158
    :pswitch_0
    if-nez v5, :cond_1

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v8, "group"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    invoke-virtual {v7, p2}, Landroid/support/v7/internal/view/e;->a(Landroid/util/AttributeSet;)V

    move v3, v5

    goto :goto_2

    .line 165
    :cond_4
    const-string v8, "item"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 166
    invoke-virtual {v7, p2}, Landroid/support/v7/internal/view/e;->b(Landroid/util/AttributeSet;)V

    move v3, v5

    goto :goto_2

    .line 167
    :cond_5
    const-string v8, "menu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 169
    invoke-virtual {v7}, Landroid/support/v7/internal/view/e;->c()Landroid/view/SubMenu;

    move-result-object v3

    .line 172
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/internal/view/c;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    move v3, v5

    .line 173
    goto :goto_2

    :cond_6
    move-object v2, v3

    move v3, v1

    .line 177
    goto :goto_2

    .line 180
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 181
    if-eqz v5, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v2, v4

    move v3, v6

    .line 183
    goto :goto_2

    .line 184
    :cond_7
    const-string v8, "group"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 185
    invoke-virtual {v7}, Landroid/support/v7/internal/view/e;->a()V

    move v3, v5

    goto :goto_2

    .line 186
    :cond_8
    const-string v8, "item"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 189
    invoke-virtual {v7}, Landroid/support/v7/internal/view/e;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-static {v7}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/support/v4/view/n;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v7}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/support/v4/view/n;

    .line 192
    :cond_9
    invoke-virtual {v7}, Landroid/support/v7/internal/view/e;->b()V

    move v3, v5

    goto/16 :goto_2

    .line 197
    :cond_a
    const-string v8, "menu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    move v3, v5

    .line 198
    goto/16 :goto_2

    .line 203
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_b
    return-void

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/support/v7/internal/view/c;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/support/v7/internal/view/c;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 4

    .prologue
    .line 106
    instance-of v0, p2, Landroid/support/v4/a/a/a;

    if-nez v0, :cond_1

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 116
    invoke-direct {p0, v1, v0, p2}, Landroid/support/v7/internal/view/c;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
