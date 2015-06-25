.class public final Lio/fabric/sdk/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/q;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lio/fabric/sdk/android/a;->a:I

    .line 13
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lio/fabric/sdk/android/a;->a:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/a;->a(I)Z

    .line 37
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/fabric/sdk/android/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 101
    if-nez p4, :cond_0

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lio/fabric/sdk/android/a;->a:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/a;->a(I)Z

    .line 72
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/a;->a(I)Z

    .line 82
    return-void
.end method
