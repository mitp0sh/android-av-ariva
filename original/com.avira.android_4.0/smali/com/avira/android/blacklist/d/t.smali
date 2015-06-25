.class public final Lcom/avira/android/blacklist/d/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/blacklist/d/t;


# instance fields
.field private final b:Lcom/avira/android/blacklist/d/h;

.field private c:Lcom/avira/android/blacklist/d/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/t;->b:Lcom/avira/android/blacklist/d/h;

    .line 29
    return-void
.end method

.method public static a()Lcom/avira/android/blacklist/d/t;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/avira/android/blacklist/d/t;->a:Lcom/avira/android/blacklist/d/t;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/avira/android/blacklist/d/t;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/t;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/t;->a:Lcom/avira/android/blacklist/d/t;

    .line 23
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/t;->a:Lcom/avira/android/blacklist/d/t;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avira/android/blacklist/d/aa;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avira/android/blacklist/d/t;->c:Lcom/avira/android/blacklist/d/aa;

    .line 54
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/blacklist/d/t;->b:Lcom/avira/android/blacklist/d/h;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/avira/android/blacklist/d/aa;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avira/android/blacklist/d/t;->c:Lcom/avira/android/blacklist/d/aa;

    return-object v0
.end method
