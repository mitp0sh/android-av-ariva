.class public final Lcom/mixpanel/android/mpmetrics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/at;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/at;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/c;->a:Lcom/mixpanel/android/mpmetrics/at;

    .line 126
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/c;->b:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/c;->c:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public final a()Lcom/mixpanel/android/mpmetrics/at;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->a:Lcom/mixpanel/android/mpmetrics/at;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->c:Ljava/lang/String;

    return-object v0
.end method
