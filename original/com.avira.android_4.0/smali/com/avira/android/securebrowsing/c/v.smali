.class public final enum Lcom/avira/android/securebrowsing/c/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/securebrowsing/c/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/securebrowsing/c/v;

.field private static final BROWSER_LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/securebrowsing/c/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CHROME_BROWSER:Lcom/avira/android/securebrowsing/c/v;

.field public static final enum CUSTOM_BROWSER:Lcom/avira/android/securebrowsing/c/v;

.field public static final enum DEFAULT_BROWSER:Lcom/avira/android/securebrowsing/c/v;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/avira/android/securebrowsing/c/v;

    const-string v1, "DEFAULT_BROWSER"

    const-string v2, "def"

    invoke-direct {v0, v1, v3, v2}, Lcom/avira/android/securebrowsing/c/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/v;->DEFAULT_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    .line 18
    new-instance v0, Lcom/avira/android/securebrowsing/c/v;

    const-string v1, "CHROME_BROWSER"

    const-string v2, "chr"

    invoke-direct {v0, v1, v4, v2}, Lcom/avira/android/securebrowsing/c/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/v;->CHROME_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    .line 19
    new-instance v0, Lcom/avira/android/securebrowsing/c/v;

    const-string v1, "CUSTOM_BROWSER"

    const-string v2, "cus"

    invoke-direct {v0, v1, v5, v2}, Lcom/avira/android/securebrowsing/c/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/v;->CUSTOM_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/securebrowsing/c/v;

    sget-object v1, Lcom/avira/android/securebrowsing/c/v;->DEFAULT_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/securebrowsing/c/v;->CHROME_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/securebrowsing/c/v;->CUSTOM_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avira/android/securebrowsing/c/v;->$VALUES:[Lcom/avira/android/securebrowsing/c/v;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/v;->BROWSER_LOOKUP:Ljava/util/Map;

    .line 26
    const-class v0, Lcom/avira/android/securebrowsing/c/v;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/v;

    .line 28
    sget-object v2, Lcom/avira/android/securebrowsing/c/v;->BROWSER_LOOKUP:Ljava/util/Map;

    iget-object v3, v0, Lcom/avira/android/securebrowsing/c/v;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/avira/android/securebrowsing/c/v;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/v;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/avira/android/securebrowsing/c/v;->BROWSER_LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/v;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/v;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/avira/android/securebrowsing/c/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/v;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/securebrowsing/c/v;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/avira/android/securebrowsing/c/v;->$VALUES:[Lcom/avira/android/securebrowsing/c/v;

    invoke-virtual {v0}, [Lcom/avira/android/securebrowsing/c/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/securebrowsing/c/v;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/v;->a:Ljava/lang/String;

    return-object v0
.end method
