.class public final enum Lcom/avira/android/securebrowsing/c/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/securebrowsing/c/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/securebrowsing/c/y;

.field public static final enum INVALID:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum MALWARE:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum PHISHING:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum SAFE:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum SPAM:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

.field public static final enum USER_ALLOWED:Lcom/avira/android/securebrowsing/c/y;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avira/android/securebrowsing/c/y;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/securebrowsing/c/y;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/avira/android/securebrowsing/c/y;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/avira/android/securebrowsing/c/y;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "INVALID"

    const/4 v2, -0x1

    const-string v3, "dil"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->INVALID:Lcom/avira/android/securebrowsing/c/y;

    .line 14
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "UNKNOWN"

    const-string v2, "nwo"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

    .line 15
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "SAFE"

    const-string v2, "efa"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->SAFE:Lcom/avira/android/securebrowsing/c/y;

    .line 16
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "MALWARE"

    const-string v2, "era"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->MALWARE:Lcom/avira/android/securebrowsing/c/y;

    .line 17
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "PHISHING"

    const-string v2, "hsi"

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->PHISHING:Lcom/avira/android/securebrowsing/c/y;

    .line 18
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "SPAM"

    const/4 v2, 0x5

    const-string v3, "map"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->SPAM:Lcom/avira/android/securebrowsing/c/y;

    .line 19
    new-instance v0, Lcom/avira/android/securebrowsing/c/y;

    const-string v1, "USER_ALLOWED"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "wol"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/y;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->USER_ALLOWED:Lcom/avira/android/securebrowsing/c/y;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avira/android/securebrowsing/c/y;

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->INVALID:Lcom/avira/android/securebrowsing/c/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->SAFE:Lcom/avira/android/securebrowsing/c/y;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->MALWARE:Lcom/avira/android/securebrowsing/c/y;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->PHISHING:Lcom/avira/android/securebrowsing/c/y;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/securebrowsing/c/y;->SPAM:Lcom/avira/android/securebrowsing/c/y;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/securebrowsing/c/y;->USER_ALLOWED:Lcom/avira/android/securebrowsing/c/y;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->$VALUES:[Lcom/avira/android/securebrowsing/c/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/avira/android/securebrowsing/c/y;->a:I

    .line 33
    iput-object p4, p0, Lcom/avira/android/securebrowsing/c/y;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(I)Lcom/avira/android/securebrowsing/c/y;
    .locals 6

    .prologue
    .line 38
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->c:Ljava/util/Map;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/y;->values()[Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/avira/android/securebrowsing/c/y;->c:Ljava/util/Map;

    iget v5, v3, Lcom/avira/android/securebrowsing/c/y;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/y;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/y;
    .locals 6

    .prologue
    .line 56
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->d:Ljava/util/Map;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/y;->values()[Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/avira/android/securebrowsing/c/y;->d:Ljava/util/Map;

    iget-object v5, v3, Lcom/avira/android/securebrowsing/c/y;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/y;

    return-object v0
.end method

.method public static a(Lcom/avira/android/securebrowsing/c/y;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->e:Ljava/util/Map;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/y;->values()[Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/avira/android/securebrowsing/c/y;->e:Ljava/util/Map;

    iget-object v5, v3, Lcom/avira/android/securebrowsing/c/y;->b:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/avira/android/securebrowsing/c/y;)I
    .locals 6

    .prologue
    .line 92
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/y;->f:Ljava/util/Map;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/y;->values()[Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/avira/android/securebrowsing/c/y;->f:Ljava/util/Map;

    iget v5, v3, Lcom/avira/android/securebrowsing/c/y;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/y;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/avira/android/securebrowsing/c/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/y;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/securebrowsing/c/y;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->$VALUES:[Lcom/avira/android/securebrowsing/c/y;

    invoke-virtual {v0}, [Lcom/avira/android/securebrowsing/c/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/securebrowsing/c/y;

    return-object v0
.end method
