import { Tabs } from 'expo-router';
import React from 'react';
import { Platform } from 'react-native';

import { HapticTab } from '@/components/HapticTab';
import { IconSymbol } from '@/components/ui/IconSymbol';
import TabBarBackground from '@/components/ui/TabBarBackground';
import { Colors } from '@/constants/Colors';
import { useColorScheme } from '@/hooks/useColorScheme';
import { Image, View, Text } from 'react-native';

export default function TabLayout() {
  const colorScheme = useColorScheme();

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: Colors[colorScheme ?? 'light'].tint,
        headerShown: false,
        headerTitleAlign: 'center',
        tabBarButton: HapticTab,
        tabBarBackground: TabBarBackground,
        tabBarPosition: 'bottom',
        tabBarActiveBackgroundColor: 'rgba(255, 186, 0, 1)',
      }}>
      <Tabs.Screen
        name="index"
        options={{
          title: "",
          tabBarIcon: () => (<Image source={require('../../assets/images/logo.png')} style={{ width: 50, height: 50}}/>),}}      />
      <Tabs.Screen
        name="utilisateur"
        options={{
          title: 'Mon Compte',
          //tabBarIcon: ({ color }) => <IconSymbol size={28} name="paperplane.fill" color={color} />,
        }}
      />
    </Tabs>
  );
}
