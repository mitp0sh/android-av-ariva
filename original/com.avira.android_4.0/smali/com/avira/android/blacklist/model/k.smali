.class public final Lcom/avira/android/blacklist/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/avira/android/blacklist/model/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 125
    check-cast p1, Lcom/avira/android/blacklist/model/j;

    check-cast p2, Lcom/avira/android/blacklist/model/j;

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avira/android/blacklist/model/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
