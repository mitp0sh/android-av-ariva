.class public final Lcom/mixpanel/android/mpmetrics/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/mixpanel/android/mpmetrics/al;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/al;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ak;->b:Lcom/mixpanel/android/mpmetrics/al;

    .line 44
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/ak;->a:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/mixpanel/android/mpmetrics/al;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ak;->b:Lcom/mixpanel/android/mpmetrics/al;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ak;->a:Ljava/lang/String;

    return-object v0
.end method
