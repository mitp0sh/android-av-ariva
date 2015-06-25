.class public final Lcom/avira/applock/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avira/applock/b/g;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/avira/applock/b/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    sput-object p0, Lcom/avira/applock/b/g;->a:Ljava/util/List;

    .line 43
    return-void
.end method
